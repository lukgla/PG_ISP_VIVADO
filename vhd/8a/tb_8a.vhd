library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity tb_8a is
end entity;

architecture rtl of tb_8a is

  signal clk_i   : STD_LOGIC := '0';
  signal red_o   : STD_LOGIC_VECTOR (3 downto 0);
  signal green_o : STD_LOGIC_VECTOR (3 downto 0);
  signal blue_o  : STD_LOGIC_VECTOR (3 downto 0);
  signal hsync_o : STD_LOGIC;
  signal vsync_o : STD_LOGIC;
  signal sw_i    : STD_LOGIC_VECTOR (7 downto 0):= (others => '0');
  signal btn_i   : STD_LOGIC_VECTOR (3 downto 0):= (others => '0');

begin

clk_i <= not clk_i after 5 ns; 
top_8a_inst: entity work.top_8a
port map (
  clk_i   => clk_i,
  red_o   => red_o,
  green_o => green_o,
  blue_o  => blue_o,
  hsync_o => hsync_o,
  vsync_o => vsync_o,
  sw_i    => sw_i,
  btn_i   => btn_i
);
end architecture;
