----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.02.2024 23:18:33
-- Design Name: 
-- Module Name: clockDivider - Behavioral
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

entity clockDivider is
    generic (one_cycles: natural:= 10 ; zero_cycles: natural := 10; initial_state: STD_LOGIC := '0');
    Port ( clk_i : in STD_LOGIC;
           rst_i: in STD_LOGIC;
           clk_o : out STD_LOGIC);
end clockDivider;

architecture Behavioral of clockDivider is
subtype IntN is integer range (one_cycles when one_cycles > zero_cycles else zero_cycles) downto 0;
signal clk_out : STD_LOGIC := initial_state;
begin

    process(clk_i,rst_i)
    variable counter: IntN := 0;
    BEGIN
        if rst_i = '1' then
            counter := 0;
            clk_out <= initial_state;
        elsif rising_edge(clk_i) then
            counter := counter + 1;
            if (clk_out = '0' and counter >= zero_cycles) or (clk_out = '1' and counter >= one_cycles)  then
                counter := 0;
                clk_out <= not clk_out;
           end if;
         end if;
    END PROCESS;
    
    clk_o <= clk_out;

end Behavioral;
