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
           hsync_o : out STD_LOGIC;
           vsync_o : out STD_LOGIC;
           vmem_addr_o : out STD_LOGIC_VECTOR (17 downto 0);
           vmem_data_i : in STD_LOGIC_VECTOR (0 downto 0));
end vga_renderer;

architecture Behavioral of vga_renderer is

component clockDivider is
    generic (one_cycles: natural:= 100_000 ; zero_cycles: natural := 100_000; initial_state: STD_LOGIC := '0');
    Port ( clk_i : in STD_LOGIC;
            rst_i: in STD_LOGIC;
            clk_o : out STD_LOGIC);
end component clockDivider;
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

signal vmem_addr: std_logic_vector(17 downto 0);
begin

red_o <= (others => vga_color);
green_o <= (others => vga_color);
blue_o <= (others => vga_color);
vmem_addr_o <= vmem_addr;

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
          vmem_addr <= (others => '0');
        end if; 
      else  
        vga_x <= vga_x + 1;
      end if;
      if vga_v_state=active and vga_y >= (480- 384)/2 and vga_y < ((480- 384)/2+384) then
        if vga_x >= (640- 384)/2 and vga_x < ((640- 384)/2+384) then
         if vmem_data_i /= "0" then
           vga_color <= '1';
         end if;
          vga_pixel <= vga_pixel + 1;
          vmem_addr <= std_logic_vector(vga_pixel + 1);          
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
