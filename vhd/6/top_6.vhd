
library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity top_6 is
  port (
    clk_i: in std_logic;
    rst_i: in std_logic;
    button_i: in std_logic_vector(3 downto 0) ;
    led7_an_o: out std_logic_vector(3 downto 0) ;
    led7_seg_o: out std_logic_vector(7 downto 0)
  );
end entity;

architecture Behavioral of top_6 is
  
begin
end architecture;