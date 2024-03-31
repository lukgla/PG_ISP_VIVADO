----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.03.2024 20:59:31
-- Design Name: 
-- Module Name: top_5b - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top_5b is
    Port ( clk_i : in STD_LOGIC;
           red_o : out STD_LOGIC_VECTOR (3 downto 0); -- all ones is white
           green_o : out STD_LOGIC_VECTOR (3 downto 0);
           blue_o : out STD_LOGIC_VECTOR (3 downto 0);
           hsync_o : out STD_LOGIC; -- short negative impuls set carret to next line
           vsync_o : out STD_LOGIC; -- long negative impuls set carret to start of screen
           sw_i : in STD_LOGIC_VECTOR (7 downto 0);
           btn_i : in STD_LOGIC_VECTOR (3 downto 0));
end top_5b;

architecture Behavioral of top_5b is
COMPONENT video_mem
  PORT (
    clka : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    clkb : IN STD_LOGIC;
    addrb : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    doutb : OUT STD_LOGIC_VECTOR(0 DOWNTO 0) 
  );
END COMPONENT;
COMPONENT singen
  PORT (
    aclk : IN STD_LOGIC;
    aclken : IN STD_LOGIC; -- stop generator by 0 (signal must be on while changing config)
    aresetn : IN STD_LOGIC; -- reset both generators
    s_axis_config_tvalid : IN STD_LOGIC; -- enable config
    s_axis_config_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0); -- 31 downto 16 is phase, 15-0 is hz
    s_axis_config_tlast : IN STD_LOGIC; -- enable config for second channel
    m_axis_data_tvalid : OUT STD_LOGIC; -- if m_axis_data_tdata is valid
    m_axis_data_tdata : OUT STD_LOGIC_VECTOR(15 DOWNTO 0); -- znacz?cze 10 downto 0
    event_s_config_tlast_missing : OUT STD_LOGIC; -- left open
    event_s_config_tlast_unexpected : OUT STD_LOGIC -- left open
  );
END COMPONENT;
-- First channel phase must be 0
component clockDivider is
    generic (one_cycles: natural:= 100_000 ; zero_cycles: natural := 100_000; initial_state: STD_LOGIC := '0');
    Port ( clk_i : in STD_LOGIC;
           rst_i: in STD_LOGIC;
           clk_o : out STD_LOGIC);
end component clockDivider;
-- video mem
signal vmem_i_addr: STD_LOGIC_VECTOR(17 DOWNTO 0) := (others => '0');
signal vmem_o_addr: STD_LOGIC_VECTOR(17 DOWNTO 0) := (others => '0');
signal vmem_i_en: std_logic_vector(0 downto 0) := "0";
signal vmem_i_data: std_logic_vector(0 downto 0):= "0";
signal vmem_o_data: std_logic_vector(0 downto 0):= "0";
-- sgen
signal sgen_en: std_logic := '1';
signal sgen_rst: std_logic := '1';
signal sgen_conf_en: std_logic := '0';
signal sgen_conf_data: std_logic_vector(31 downto 0) := (others => '0');
signal sgen_conf_en2: std_logic := '0';
signal sgen_data_valid: std_logic := '0';
signal sgen_data_data: std_logic_vector(15 downto 0) := (others => '0');
signal sgen_ch1_conf: std_logic_vector(31 downto 0) := (others => '0'); -- phase,hz
signal sgen_ch2_conf: std_logic_vector(31 downto 0) := (others => '0'); -- phase,hz
alias sgen_ch1_conf_hz: std_logic_vector is sgen_ch1_conf(15 downto 0);
alias sgen_ch2_conf_hz: std_logic_vector is sgen_ch2_conf(15 downto 0);
alias sgen_ch2_conf_phase: std_logic_vector is sgen_ch2_conf(31 downto 16);
type sgen_state_type is (generating,prog1,prog2,reset,stoped);
signal sgen_state: sgen_state_type := generating;
signal sgen_ch1_data: std_logic_vector(10 downto 0);
signal sgen_ch2_data: std_logic_vector(10 downto 0);
signal sgen_ch_selection: unsigned(0 downto 0);
-- vga
signal vga_clk: std_logic := '0';
signal vga_x: integer range 0 to 640 := 0;
signal vga_y: integer range 0 to 480 := 0;
signal vga_pixel: unsigned(17 downto 0) := (others => '0');
signal vga_h_counter: integer range 0 to 800 := 0;
signal vga_v_counter: integer range 0 to 525 := 0;
signal vga_color: std_logic := '0';
type vga_state_h_type is (
active, -- 640
front, -- 16
sync, -- 96
back -- 48
);
type vga_state_v_type is (
active, -- 480
front, -- 11
sync, -- 2
back -- 31
);
signal vga_h_state: vga_state_h_type := active;
signal vga_v_state: vga_state_v_type := active;
-- bounce
signal btn_dbounced: std_logic_vector(3 downto 0):= (others => '0');
begin
vmem : video_mem
 PORT MAP (
   clka => clk_i,
   wea => vmem_i_en,
   addra => vmem_i_addr,
   dina => vmem_i_data,
   clkb => clk_i,
   addrb => vmem_o_addr,
   doutb => vmem_o_data
 );
sgen : singen
 PORT MAP (
   aclk => clk_i,
   aclken => sgen_en,
   aresetn => sgen_rst,
   s_axis_config_tvalid => sgen_conf_en,
   s_axis_config_tdata => sgen_conf_data,
   s_axis_config_tlast => sgen_conf_en2,
   m_axis_data_tvalid => sgen_data_valid,
   m_axis_data_tdata => sgen_data_data,
   event_s_config_tlast_missing => open,
   event_s_config_tlast_unexpected => open
 );

clk_4: clockDivider
generic map (
  one_cycles => 4, -- 25 Mhz
  zero_cycles => 4
)
port map (
  clk_i => clk_i,
  rst_i => '0',
  clk_o => vga_clk
);

red_o <= (others => vga_color);
green_o <= (others => vga_color);
blue_o <= (others => vga_color);

btn_proc: process (clk_i)
begin
  if rising_edge(clk_i) then
    btn_dbounced <= btn_i;
  end if;
end process btn_proc;

-- sw_proc: process(clk_i)
-- begin
--   sgen_rst <= '0';
--   if rising_edge(clk_i) then
--     if btn_dbounced(3) = '1' then
--       sgen_ch1_conf_hz <= sw_i;
--     end if;
--     if btn_dbounced(2) = '1' then
--       sgen_ch2_conf_hz <= sw_i;
--     end if;
--     if btn_dbounced(1) = '1' then
--       sgen_ch2_conf_phase <= sw_i;
--     end if;
--     if btn_dbounced(0) = '1' then
--       sgen_state <= prog1;
--       -- TODO
--       -- clear screen
--       -- set new values for gen and start
--       sgen_rst <= '1';
--     end if;
--   end if;
-- end process sw_proc;

process(clk_i)
begin
  if rising_edge(clk_i) then
    sgen_rst <= '0';
    case( sgen_state ) is
      when prog1 =>
        sgen_conf_en <= '1';
        sgen_conf_data <= sgen_ch1_conf;
        sgen_state <= prog2;
      when prog2 =>
        sgen_conf_en <= '1';
        sgen_conf_en2 <= '1';
        sgen_conf_data <= sgen_ch2_conf;
        sgen_state <= reset;
      when reset => 
        sgen_conf_en <= '0';
        sgen_conf_en2 <= '0';
        sgen_rst <= '1';
        sgen_state <= stoped;
      when stoped => 
        -- if sgen_en = '1' then
        -- sgen_state <= generating;        
      -- end if;
      null;
      when others => null;
    end case;
  end if;
end process;


-- sgen_proc: process(clk_i)
-- begin
--   if rising_edge(clk_i) then
--     if sgen_state = reset then
--       sgen_en <= '0';
--     end if;
--     -- TODO if sgen_state = stoped then clear buffer (enable generator)
--   -- else read value from sgen and write to buffer
--   end if;
-- end process sgen_proc;

sgen_proc: process(clk_i)
begin
  if rising_edge(clk_i) then
    if sgen_data_valid = '1' then
      if sgen_ch_selection = "0" then
        sgen_ch1_data <= sgen_data_data(10 downto 0);
      else
        sgen_ch2_data <= sgen_data_data(10 downto 0);
        -- write to vmem
        vmem_i_data <= (0 => '1',others => '0');
        -- vmem_i_addr <= sgen_ch1_data; -- some math magic logic
        -- 384 -> 192 (128 + 64)
      end if;
    end if;
  end if;
end process sgen_proc;


 -- video_o_iutput is 384x384
-- displayed on 640x480
-- genera_ite starting from center and it have to be square
-- Generate in White-Black (all color = 1 is white)

--Cz?stotliwo?? obu kana?�w (X i Y) i faz? jednego (Y) ustawiamy za pomoc? prze??cznik�w SW0-SW7 (zakres 0-255) i przycisk�w BTNL (wpis cz?stotliwo?ci X ustawionej na prze??cznikach), BTNC (wpis cz?stotliwo?ci Y ustawionej na prze??cznikach), BTNR (wpis offsetu fazy Y ustawionej na prze??cznikach).
--Przycisk BTND powinien s?u?y? do wyczyszczenia ekranu i zresetowania generatora DDS (aby rozpocz?? rysowanie figur od ustawionej fazy dla kana?u Y i fazy 0 dla kana?u X).
--Kana? X to Channel 1 (patrz opis komponentu DDS poni?ej). Wsp�?rz?dne ujemne s? po lewej stronie ekranu dodatnie po prawej. Amplituda kana?u powinna by? tak dobrana aby krzywa w pe?ni wykorzysta?a dost?pny ekran.
--Kana? Y to Channel 2 (patrz opis komponentu DDS poni?ej). Wsp�?rz?dne ujemne s? na dole ekranu dodatnie na g�rze. Amplituda kana?u powinna by? tak dobrana aby krzywa w pe?ni wykorzysta?a dost?pny ekran.
--Wsp�?rz?dne (0,0) s? w ?rodku ekranu.
-- W tym ?wiczeniu nie korzystamy z sygna?u �reset". Prosz? zamiast tego stosowa? warto?ci pocz?tkowe sygna?�w i zmiennych.

vga_proc: process(vga_clk)
begin
  if rising_edge(vga_clk) then
    vsync_o <= '1';
    hsync_o <= '1';
    vga_color <= '0';
    vga_h_counter <= vga_h_counter + 1;
    -- color
    case( vga_h_state ) is
      when active => 
      if vga_x = 640 then
        vga_h_state <= front;
        vga_h_counter <= 0;
        vga_y <= vga_y + 1;
        if vga_y = 480 then
          vga_pixel <= (others => '0');
          vmem_o_addr <= (others => '0');
        end if;
      else  
        vga_x <= vga_x + 1;
      end if;
      if vga_v_state=active and vga_y >= (480- 384)/2 and vga_y < ((480- 384)/2+384) then
        if vga_x >= (640- 384)/2 and vga_x < ((640- 384)/2+384) then
--          if vmem_o_data /= (others => '0') then
--            vga_color <= '1';
--          end if;
          vga_pixel <= vga_pixel + 1;
--          vmem_o_addr <= vga_pixel + 1;          
        end if;
      end if;  
      when front => 
        if vga_h_counter = 15 then 
          vga_h_state <= sync;
--          vga_h_counter <= '0';
        end if;
      when sync => 
        hsync_o <= '0';
        if vga_h_counter = 95 then
          vga_h_state <= back;
          vga_h_counter <= 0;
        end if;
      when back => 
        if vga_h_counter = 47 then
          vga_h_state <= back;
          vga_h_counter <= 0;
          vga_v_counter <= vga_v_counter + 1;
          case( vga_v_state ) is
            when active => if vga_v_counter = 479 then
              vga_v_state <= front;
              vga_v_counter <= 0; 
            end if;
            when front => if vga_v_counter = 10 then
              vga_v_state <= sync;
              vga_v_counter <= 0;
              vsync_o <= '0'; 
            end if;
            when sync => if vga_v_counter = 1 then
              vga_v_state <= back;
              vga_v_counter <= 0; 
            end if;
            when back => if vga_v_counter = 30 then
              vga_v_state <= active;
              vga_v_counter <= 0;
              -- reset 
            end if;
          end case ;
        end if;
    end case ;

    if vga_v_state = sync then
      vsync_o <= '0';
      vga_color <= '0';
    end if;
  end if;
end process vga_proc;


end Behavioral;
