library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity tb_6 is
end entity;

architecture Behavioral of tb_6 is

  signal clk_i      : std_logic:= '0';
  signal rst_i      : std_logic := '0';
  signal button_i   : std_logic_vector(3 downto 0) := (1 => '1',others => '0');
  signal led7_an_o  : std_logic_vector(3 downto 0);
  signal led7_seg_o : std_logic_vector(7 downto 0);


  signal clk_o : STD_LOGIC;

begin
    clk_i <= not clk_i after 5 ns;
    top_6_inst: entity work.top_6
    port map (
      clk_i      => clk_i,
      rst_i      => rst_i,
      button_i   => button_i,
      led7_an_o  => led7_an_o,
      led7_seg_o => led7_seg_o
    );

    clockdivider_inst: entity work.clockDivider
    generic map (
      one_cycles    => 10_000,
      zero_cycles   => 10_000,
      initial_state => '0'
    )
    port map (
      clk_i => clk_i,
      rst_i => rst_i,
      clk_o => clk_o
    );

    buttons: process (clk_o) is
    begin
        if rising_edge(clk_o) then
            button_i <= std_logic_vector(unsigned(button_i) + 1);
        end if ;
    end process;
end architecture;
