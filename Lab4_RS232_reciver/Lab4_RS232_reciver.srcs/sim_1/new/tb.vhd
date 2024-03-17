----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.03.2024 17:20:45
-- Design Name: 
-- Module Name: tb - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb is
--  Port ( );
end tb;

architecture Behavioral of tb is
component rs232_reciver is
  Port (
           clk_i : in STD_LOGIC; -- zegar 100MHz
           rst_i : in STD_LOGIC;
           RXD_i : in STD_LOGIC;
           led7_an_o : out STD_LOGIC_VECTOR (3 downto 0);
           led7_seg_o : out STD_LOGIC_VECTOR (7 downto 0));
end component rs232_reciver;
component clockDivider is
    generic (one_cycles: natural:= 100_000 ; zero_cycles: natural := 100_000; initial_state: STD_LOGIC := '0');
    Port ( clk_i : in STD_LOGIC;
           rst_i: in STD_LOGIC;
           clk_o : out STD_LOGIC);
end component clockDivider;
constant clock_to_baudrate : natural := 100_000_000 /( 9600);
signal clk_i: std_logic := '0';
signal rst_i: std_logic := '0';
signal RXD_i: std_logic := '1';
signal led7_an_o: STD_LOGIC_VECTOR (3 downto 0);
signal led7_seg_o: STD_LOGIC_VECTOR (7 downto 0);
signal clk_baud: std_logic := '0';
begin

clk_i <= not clk_i after 5 ns;

baudrate_comp: clockDivider generic map( one_cycles => clock_to_baudrate,zero_cycles => clock_to_baudrate) port map(
    clk_i => clk_i,
    rst_i => rst_i,
    clk_o => clk_baud
);

reciver: rs232_reciver port map(
    clk_i => clk_i,
    rst_i => rst_i,
    RXD_i => RXD_i,
    led7_an_o => led7_an_o,
    led7_seg_o => led7_seg_o
);

process
variable data: std_logic_vector(7 downto 0) := "11000011";
begin
    wait until rising_edge(clk_baud);
    RXD_i <= '0';
    wait until rising_edge(clk_baud);
    for i in 0 to 7 loop
        RXD_i <= data(i);
        wait until rising_edge(clk_baud);    
    end loop;
    RXD_i <= '1';
    wait until rising_edge(clk_baud);
end process;

end Behavioral;
