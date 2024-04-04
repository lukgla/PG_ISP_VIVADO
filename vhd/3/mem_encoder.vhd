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
use IEEE.NUMERIC_STD.ALL;

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
           digit_i: out STD_LOGIC_VECTOR (31 downto 0) := (others => '1')
           );
end mem_encoder;

architecture Behavioral of mem_encoder is
--alias BTNL is btn_i(3);
--alias BTNC is btn_i(2);
--alias BTNR is btn_i(1);
--alias BTND is btn_i(0);
type segment_map_type is array(0 to 15) of std_logic_vector (6 downto 0);
constant SEGMENTMAP:segment_map_type  := ("1000000", 
"1111001",   --1
"0100100",   --2
"0110000",   --3
"0011001",   --4
"0010010",   --5
"0000010",   --6
"1111000",   --7
"0000000",   --8
"0010000",   --9
"0001000",   --A
"0000011",   --b
"1000110",   --C
"0100001",   --d
"0000110",   --E
"0001110"   --F
);
begin

    process(clk_i)
    begin
    if rising_edge(clk_i) then
        for i in btn_i'range loop
            if btn_i(i) = '1' then
                
--                   <= SEGMENTMAP(TO_INTEGER(unsigned(sw_i(3 downto 0))));
case sw_i(3 downto 0) is
		when "0000" => digit_i(i*8+7 downto i*8+1) <= "0000001";
		when "0001" => digit_i(i*8+7 downto i*8+1) <= "1001111";
		when "0010" => digit_i(i*8+7 downto i*8+1) <= "0010010";
		when "0011" => digit_i(i*8+7 downto i*8+1) <= "0110000";
		when "0100" => digit_i(i*8+7 downto i*8+1) <= "1001100";
		when "0101" => digit_i(i*8+7 downto i*8+1) <= "0101100";
		when "0110" => digit_i(i*8+7 downto i*8+1) <= "0100000";
		when "0111" => digit_i(i*8+7 downto i*8+1) <= "0001111";
		when "1000" => digit_i(i*8+7 downto i*8+1) <= "0000000";
		when "1001" => digit_i(i*8+7 downto i*8+1) <= "0001000";
		when "1010" => digit_i(i*8+7 downto i*8+1) <= "0001000";
		when "1011" => digit_i(i*8+7 downto i*8+1) <= "1100000";
		when "1100" => digit_i(i*8+7 downto i*8+1) <= "0110001";
		when "1101" => digit_i(i*8+7 downto i*8+1) <= "1000010";
		when "1110" => digit_i(i*8+7 downto i*8+1) <= "0110000";
		when "1111" => digit_i(i*8+7 downto i*8+1) <= "0111000";
		when others => digit_i(i*8+7 downto i*8+1) <= "XXXXXXX";
	end case;









            end if;
        end loop;
        for i in 3 downto 0 loop
               digit_i(i*8) <= sw_i(i+4);
        end loop;
        
      end if;  
    end process;


end Behavioral;
