----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.03.2024 18:59:12
-- Design Name: 
-- Module Name: vga_renderer - Behavioral
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

entity vga_renderer is
    Port ( clk_i : in STD_LOGIC;
           red_o : out STD_LOGIC_VECTOR (3 downto 0);
           green_o : out STD_LOGIC_VECTOR (3 downto 0);
           blue_o : out STD_LOGIC_VECTOR (3 downto 0);
           hsync_o : out STD_LOGIC:= '1';
           vsync_o : out STD_LOGIC:= '1';
           BRAM_PORTB_O_addr: out std_logic_vector(31 downto 0);
           BRAM_PORTB_O_din: out std_logic_vector(31 downto 0);
           BRAM_PORTB_O_dout: in std_logic_vector(31 downto 0);
           BRAM_PORTB_O_en: out std_logic;
           BRAM_PORTB_O_rst: out std_logic;
           BRAM_PORTB_O_we: out std_logic_vector(3 downto 0)
           );
end vga_renderer;

architecture Behavioral of vga_renderer is

component clockDivider is
    generic (one_cycles: natural:= 100_000 ; zero_cycles: natural := 100_000; initial_state: STD_LOGIC := '0');
    Port ( clk_i : in STD_LOGIC;
            rst_i: in STD_LOGIC;
            clk_o : out STD_LOGIC);
end component clockDivider;
signal vga_clk: std_logic := '0';
-- track display
signal pixel_addr: unsigned(17 downto 0) := (others => '0');
-- track state duration
signal h_counter: integer range 0 to 800-1 := 0;
signal v_counter: integer range 0 to 525-1 := 0;
-- track current state
type vga_state_type is (
pre_active,
active, -- 640
post_active,
front, -- 16
sync, -- 96
back -- 48
);
type vga_step_type is array(vga_state_type) of natural;
constant vga_h_step: vga_step_type := (
  pre_active => 128-1, -- (640-384)/2,
  active => 384-1, --,640-1,
  post_active => 128-1,
  front => 16-1,
  sync => 96-1,
  back => 48-1
);
constant vga_v_step: vga_step_type := (
  pre_active => 48-1 + 21,
  active => 384-1-43,--480-1, 341 43
  post_active => 48-1+22,
  front => 10-1,
  sync => 2-1,
  back => 33-1
);
signal vga_h_state: vga_state_type := active;
signal vga_v_state: vga_state_type := active;

signal vmem_addr: std_logic_vector(17 downto 0) := (others => '0');
signal color: std_logic_vector(7 downto 0):= (others => '0');
begin
BRAM_PORTB_O_addr(31 downto 18) <= (others => '0');
BRAM_PORTB_O_addr(1 downto 0) <= (others => '0');
BRAM_PORTB_O_addr(17 downto 2) <= vmem_addr(17 downto 2);

with vmem_addr(1 downto 0) select color <= 
BRAM_PORTB_O_dout(31 downto 24) when "11",
BRAM_PORTB_O_dout(23 downto 16) when "10",
BRAM_PORTB_O_dout(15 downto 8) when "01",
BRAM_PORTB_O_dout(7 downto 0) when "00",
(others => '0') when others;

BRAM_PORTB_O_din <= (others => '0');
BRAM_PORTB_O_we <= (others => '0');
BRAM_PORTB_O_rst <= '0';
BRAM_PORTB_O_en <= '1';

clk_4: clockDivider
generic map (
  one_cycles => 2, -- 25 Mhz
  zero_cycles => 2
)
port map (
  clk_i => clk_i,
  rst_i => '0',
  clk_o => vga_clk
);
vga_state_machine:  process( vga_clk )
variable next_v_stage: boolean := false;
begin
  if rising_edge(vga_clk) then
    h_counter <= h_counter + 1;
    case vga_h_state is
      when pre_active => 
        if h_counter = vga_h_step(pre_active) then
          h_counter <= 0;
          vga_h_state <= active;
        end if;
      when active => 
        if h_counter = vga_h_step(active) then
          h_counter <= 0;
          vga_h_state <= post_active;
        end if;
        when post_active => 
        if h_counter = vga_h_step(post_active) then
          h_counter <= 0;
          vga_h_state <= front;
        end if;
      when front =>         
        if h_counter = vga_h_step(front) then
          h_counter <= 0;
          vga_h_state <= sync;
        end if;
      when sync =>         
        if h_counter = vga_h_step(sync) then
          h_counter <= 0;
          vga_h_state <= back;
        end if;
      when back =>
        if h_counter = vga_h_step(back) then
          h_counter <= 0;
          vga_h_state <= pre_active;
          next_v_stage := true;
        end if;
    end case;
    if next_v_stage = true then
      next_v_stage := false;
      v_counter <= v_counter+1;
      case vga_v_state is
        when pre_active => 
          if v_counter = vga_v_step(pre_active) then
            v_counter <= 0;
            vga_v_state <= active;
          end if;
        when active => 
          if v_counter = vga_v_step(active) then
            v_counter <= 0;
            vga_v_state <= post_active;
          end if ;
        when post_active => 
          if v_counter = vga_v_step(post_active) then
            v_counter <= 0;
            vga_v_state <= front;
          end if ;  
        when front =>
        if v_counter = vga_v_step(front) then
          v_counter <= 0;
          vga_v_state <= sync;
        end if ;
        when sync =>
        if v_counter = vga_v_step(sync) then
          v_counter <= 0;
          vga_v_state <= back;
        end if ;
        when back =>
        if v_counter = vga_v_step(back) then
          v_counter <= 0;
          vga_v_state <= pre_active;
        end if ;
      end case;
    end if;  
  end if;
end process;

vga_signal : process( vga_clk)
begin
  if rising_edge(vga_clk) then    
    red_o <= (others => '0');
    green_o <= (others => '0');
    blue_o <= (others => '0');
    if vga_h_state = active and vga_v_state = active then
      red_o <= color(7 downto 5)&'0';
      green_o <= color(4 downto 2)&'0';
      blue_o <= color(1 downto 0)&"00";
      pixel_addr <= pixel_addr + 1;
      vmem_addr <= std_logic_vector(pixel_addr + 1);          
    end if ;
    if vga_v_state = sync and v_counter = 0 then
      pixel_addr <= (others => '0');
      vmem_addr <= (others => '0'); 
    end if;
  end if;
end process;

sync_proc: process(vga_clk)
begin
  if rising_edge(vga_clk) then
    vsync_o <= '1';
    hsync_o <= '1';
    if(vga_h_state = sync) then
      hsync_o <= '0';
    end if;
    if(vga_v_state = sync) then
      vsync_o <= '0';
    end if;
  end if;
end process;

end architecture Behavioral;