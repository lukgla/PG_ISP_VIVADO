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
use IEEE.numeric_std.ALL;

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
component lab5a_top is
    Port ( clk_i : in STD_LOGIC;
           RXD_i : in STD_LOGIC;
           TXD_o : out STD_LOGIC;
           ld0 : out STD_LOGIC;
           led7_an_o : out STD_LOGIC_VECTOR (3 downto 0);
           led7_seg_o : out STD_LOGIC_VECTOR (7 downto 0));
end component lab5a_top;
constant clock_to_baudrate : natural := 100_000_000 /(9600);
component clockDivider is
    generic (one_cycles: natural:= clock_to_baudrate ; zero_cycles: natural := clock_to_baudrate; initial_state: STD_LOGIC := '0');
    Port ( clk_i : in STD_LOGIC;
           rst_i: in STD_LOGIC;
           clk_o : out STD_LOGIC);
end component clockDivider;
signal clk_i: std_logic := '0';
signal rst_i: std_logic := '0';
signal RXD_i: std_logic := '1';
signal TXD_o: std_logic := '1';
signal ld0: std_logic := '0';
signal led7_an_o: STD_LOGIC_VECTOR (3 downto 0);
signal led7_seg_o: STD_LOGIC_VECTOR (7 downto 0);
signal clk_baud: std_logic := '0';
begin

clk_i <= not clk_i after 5 ns;
--clk_baud <= not clk_baud after 104.16 us;
baudrate_comp: clockDivider port map(
    clk_i => clk_i,
    rst_i => rst_i,
    clk_o => clk_baud
);

reciver: lab5a_top port map(
    clk_i => clk_i,
    RXD_i => RXD_i,
    TXD_o => TXD_o,
    ld0 => ld0,
    led7_an_o => led7_an_o,
    led7_seg_o => led7_seg_o
);

process
variable data: std_logic_vector(7 downto 0) := std_logic_vector(to_unsigned(character'pos('A'),8));
constant baudrate_base: time := 104.16 us; -- 1/9600
begin
        -- 100 %
        wait until rising_edge(clk_baud);
        RXD_i <= '0';
        wait for 104.16 us;
        for i in 0 to 7 loop
            RXD_i <= data(i);
            wait for 104.16 us;    
        end loop;
        RXD_i <= '1';
        wait for 104.16 us;
     
     data := std_logic_vector(unsigned(data) + 1);
        
--        -- 96%
--        wait until rising_edge(clk_baud);
--        RXD_i <= '0';
--        wait for 100 us;
--        for i in 0 to 7 loop
--            RXD_i <= data(i);
--            wait for 100 us;    
--        end loop;
--        RXD_i <= '1';
--        wait for 100 us;
        
--        -- 104%
--        wait until rising_edge(clk_baud);
--        RXD_i <= '0';
--        wait for 108.32 us;
--        for i in 0 to 7 loop
--            RXD_i <= data(i);
--            wait for 108.32 us;    
--        end loop;
--        RXD_i <= '1';
--        wait for 108.32 us;
        
--        wait;       
end process;

end Behavioral;
