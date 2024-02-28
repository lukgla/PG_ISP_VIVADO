----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.02.2024 23:52:06
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
component top is
    port(
        clk_i: in std_logic;
        rst_i: in std_logic;
        led_0: out std_logic_vector (2 downto 0) 
    );
end component top;

component bounce is
    port(
        in_i: in std_logic;
        out_o: out std_logic
    );
end component bounce;

    signal clk_i: std_logic:= '0';
    
    signal led_0: std_logic_vector (2 downto 0) := (others => '0');

--    signal clk_bounced: std_logic:= '0';
    signal rst_i: std_logic:= '1'; 
begin
    rst_i <= not rst_i after 2000 ms;
    clk_i <= not clk_i after 100 ms;
    
--bouncer: bounce port map (in_i => clk_i, out_o => clk_bounced );
tested: top port map(clk_i => clk_i,rst_i => rst_i, led_0 => led_0);

end Behavioral;
