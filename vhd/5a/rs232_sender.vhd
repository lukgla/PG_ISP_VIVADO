----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.03.2024 00:12:15
-- Design Name: 
-- Module Name: rs232_sender - Behavioral
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

entity rs232_sender is
  Port (
    baud_clk: in std_logic;
    queue_empty: in std_logic := '0';
    slow_queue_en: out std_logic_vector (1 downto 0) := "00";
    queue_data: in std_logic_vector (7 downto 0);
    TXD_o: out std_logic := '1'
   );
end rs232_sender;

architecture Behavioral of rs232_sender is
    signal byte_pos: integer range 0 to 7 := 0;
    type sender_state_type is (waiting_for_data,start,sending,stop);
    signal sender_state: sender_state_type := waiting_for_data;
    signal clock_16: integer range 0 to 15 := 0;
    signal slow_en: std_logic_vector (1 downto 0) := "00";
begin
slow_queue_en <= slow_en;
sender: process(baud_clk)

begin
    if rising_edge(baud_clk) then      
        case sender_state is
            when waiting_for_data => 
            if queue_empty = '0' then
              -- send slow one cycle en
              case slow_en is
                when "00" | "10" => slow_en <= "01";
                when others => slow_en <= "10";
              end case;
              sender_state <= start;
              
            end if;
            when start => 
            if clock_16 = 0 then 
                clock_16 <= 0;
                TXD_o <= '0';
                byte_pos <= 0;
            elsif clock_16 = 15 then
                sender_state <= sending;
            end if;
            when sending => 
            if clock_16 = 0 then
              TXD_o <= queue_data(byte_pos);
            elsif clock_16 = 15 then
              if byte_pos = 7 then
                  sender_state <= stop;
                else
                  byte_pos <= byte_pos +1;
              end if;
            end if;
            when stop => if clock_16 = 0 then 
                TXD_o <= '1';
              elsif clock_16 = 15 then
                sender_state <= waiting_for_data;
            end if;
        end case;
    if sender_state/=waiting_for_data and clock_16 /= 15 then
        clock_16 <= clock_16 +1;
    else
        clock_16 <= 0;
    end if;
    end if;
end process sender;
end Behavioral;
