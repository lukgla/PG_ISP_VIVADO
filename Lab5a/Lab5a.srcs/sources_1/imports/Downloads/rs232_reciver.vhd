----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.03.2024 15:21:53
-- Design Name: 
-- Module Name: rs232_reciver - Behavioral
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

entity rs232_reciver is
  Port (
           baud_clk : in STD_LOGIC; -- 16x baudrate
           rst_i : in STD_LOGIC;
           RXD_i : in STD_LOGIC;
           data_o: out std_logic_vector (7 downto 0);
           data_en: out std_logic_vector (1 downto 0) := "00"
           );
end rs232_reciver;



architecture Behavioral of rs232_reciver is
function seven_seg(data_in: std_logic_vector(3 downto 0)) return std_logic_vector is
variable tmp : std_logic_vector(6 downto 0);
variable reorder: std_logic_vector(6 downto 0);
begin
--      0
--     --- 
--  5 |   | 1
--     ---   <- 6
--  4 |   | 2
--     ---
--      3

--      0
--     --- 
--  5 |   | 1
--     ---   <- 6
--  4 |   | 2
--     ---
--      3
case data_in is 
   when "0001" => tmp := "1111001";   --1
   when "0010" => tmp := "0100100";   --2
   when "0011" => tmp := "0110000";   --3
   when "0100" => tmp := "0011001";   --4
   when "0101" => tmp := "0010010";   --5
   when "0110" => tmp := "0000010";   --6
   when "0111" => tmp := "1111000";   --7
   when "1000" => tmp := "0000000";   --8
   when "1001" => tmp := "0010000";   --9
   when "1010" => tmp := "0001000";   --A
   when "1011" => tmp := "0000011";   --b
   when "1100" => tmp := "1000110";   --C
   when "1101" => tmp := "0100001";   --d
   when "1110" => tmp := "0000110";   --E
   when "1111" => tmp := "0001110";   --F
   when others => tmp := "1000000";   --0
end case;

reorder(0) := tmp(6);
reorder(1) := tmp(5);
reorder(2) := tmp(4);
reorder(3) := tmp(3);
reorder(4) := tmp(2);
reorder(5) := tmp(1);
reorder(6) := tmp(0);

return (reorder);
end function seven_seg;




signal digit_i: std_logic_vector (31 downto 0) := (others => '1');
signal bit_buffer: std_logic_vector(7 downto 0);
signal clock_16: integer range 0 to 15 := 0;

type reciver_status is (Listen,Start,Recive,Stop,Error);
signal state: reciver_status;

begin

process(baud_clk)
    variable bit_nr: integer range 0 to 7 := 0;
    variable en: std_logic_vector(1 downto 0) := "00";
begin
    if rising_edge(baud_clk) then
    clock_16 <= (clock_16 + 1) mod 16;
    case state is
        when Listen => 
            if RXD_i = '0' then
               state <= Start;
               bit_nr := 0;
               bit_buffer <= (others => 'U');
               clock_16 <= 0;       
            end if;
        when Start => if clock_16 = 15 then
            state <= Recive;
        end if;         
        when Recive => if clock_16 = 7 then
            bit_buffer(bit_nr) <= RXD_i;
            bit_nr := (bit_nr + 1) mod 8;
            if bit_nr = 0 then
                state <= Stop;
            end if;
        end if;
        when Stop => if clock_16 = 7 then
            if RXD_i = '1' then
                state <= Listen;
                data_o <= bit_buffer;
                case en is
                    when "00" | "10" => en := "01";
                    when others => en:= "10";
                end case;
                data_en <= en;
            else
                state <= Error;
            end if;
        end if;
        when Error => state <= Listen;
    end case;
    end if;
end process;



end Behavioral;
