----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.02.2024 01:09:36
-- Design Name: 
-- Module Name: mem_encoder - Behavioral
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

entity mem_encoder is
    Port ( clk_i : in STD_LOGIC;
           btn_i : in STD_LOGIC_VECTOR (3 downto 0);
           sw_i : in STD_LOGIC_VECTOR (7 downto 0);
           digit_i: out STD_LOGIC_VECTOR (31 downto 0)
           );
end mem_encoder;

architecture Behavioral of mem_encoder is
alias BTNL is btn_i(3);
alias BTNC is btn_i(2);
alias BTNR is btn_i(1);
alias BTND is btn_i(0);
begin

    process(btn_i,sw_i)
        type memory_type is array(3 downto 0) of std_logic_vector(7 downto 0);
        variable memory: memory_type := (others => '1');
    begin
        for i in btn_i'range loop
            if rising_edge(btn_i(i)) then
                with sw_i(7 downto 4) select memory(i)(6 downto 0) :=
                    "1000000" when "0000", -- 0 
                    "1001111" when "0001",--1
                    "0100100" when "0010", --2
                    "0110000" when "0011", --3
                    "0011001" when "0100", --4
                    "0010010" when "0101", --5
                    "0000010" when "0110", --6
                    "1111000" when "0111", --7
                    "0000000" when "1000", --8
                    "0010000" when "1001", --9
                    "0001000" when "1010", --A
                    "0000011" when "1011", --b
                    "1000110" when "1100", --C
                    "0100001" when "1101", --d
                    "0000110" when "1110", --E
                    "0001110" when "1111", --F
                    "0000000" when others;
            end if;
        end loop;
        for i in 3 downto 0 loop
            if rising_edge(sw_i(i)) then
                memory(i)(7) := '1';
            elsif falling_edge(sw_i(i)) then
                memory(i)(7) := '0';
            end if;
        end loop;
        digit_i <= memory;
        
        
    end process;


end Behavioral;
