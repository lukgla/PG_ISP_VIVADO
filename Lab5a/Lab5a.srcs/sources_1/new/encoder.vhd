----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.03.2024 00:37:21
-- Design Name: 
-- Module Name: encoder - Behavioral
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

entity encoder is
  Port ( 
    clk_i: in std_logic;
    fifo_empty: in std_logic;
    fifo_data: in std_logic_vector(7 downto 0);
    fifo_en_o: out std_logic := '0';
    
    encoder_en_i: in std_logic;
    encoder_empty: out std_logic := '1';
    encoder_data: out std_logic_vector(7 downto 0) := (others => '0')
  );
end encoder;

architecture Behavioral of encoder is
component char_mem IS
  PORT (
    clka : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END component char_mem;

  type arr_of_chars is array(natural range<>) of std_logic_vector(7 downto 0); 
  signal chars_buffer:  arr_of_chars(17 downto 0) := (others => (others => '0'));
  signal chars_in_buffer: integer range 0 to 17 := 0;
  signal x: integer range 0 to 17 := 0;
  signal y: integer range 0 to 15  := 0;
  signal byte_pos: integer range 0 to 7 := 0;
  type encoder_type is (collecting,full,sending,CR,LF);
  signal encoder: encoder_type := collecting;
  signal encoder_char: std_logic_vector(7 downto 0) := (others => '0');
  
  signal rom_addr: std_logic_vector(11 downto 0) := (others => '0');
  signal rom_data: std_logic_vector(7 downto 0) := (others => '0');
  
--  signal encoder_en: std_logic := '0';
  signal fifo_en: std_logic := '0';

  -- const
  constant space_char:std_logic_vector  := std_logic_vector(to_unsigned(character'pos(' '),8));
  constant star_char:std_logic_vector  := std_logic_vector(to_unsigned(character'pos('*'),8));

begin


rom_comp : char_mem
  PORT MAP (
    clka => clk_i,
    addra => rom_addr,
    douta => rom_data
  );
--encoder_en_i <= encoder_en;
fifo_en_o <= fifo_en;
process(clk_i)
begin
  if rising_edge(clk_i) then
    fifo_en<= '0';

    case encoder is
      when collecting =>
        if fifo_en = '1' then -- read last requested value
          chars_buffer(chars_in_buffer) <= fifo_data;
          if chars_in_buffer /= 17 and fifo_data /= "00001101" then -- full or enter
              chars_in_buffer <= chars_in_buffer + 1;
            else
              encoder <= full;
              if chars_in_buffer = 0 then -- the only char in buffer is new line
                encoder <= CR;
              end if;
          end if;
        end if;
        if fifo_empty = '0' and encoder = collecting then -- read more
          fifo_en<= '1';
        end if;
      when full => -- one cycle to request from rom
        rom_addr <= chars_buffer(0) & "0000";
        encoder <= sending;
        x <= 0;
        y <= 0;
        byte_pos <= 0;
      when sending => 
        if encoder_en_i = '1' then
           if chars_buffer(x) > "00100000" and chars_buffer(x) < "01111111" then
            encoder_char <= chars_buffer(x);
            else
            encoder_char <= star_char;
           end if;
           if rom_data(byte_pos)='1' then
             encoder_data <= encoder_char;
           else
             encoder_data <= space_char;
           end if;
          -- next
          if byte_pos = 7 then
              if x = chars_in_buffer then 
                encoder <= CR;                
              else
                x<= x+1;
                byte_pos <= 0;
                rom_addr <= chars_buffer(x+1) & STD_LOGIC_VECTOR(TO_UNSIGNED(y,4));
              end if;
            else
              byte_pos <= byte_pos + 1;
          end if;
        end if;
      when CR => if encoder_en_i = '1' then encoder_data <= std_logic_vector(to_unsigned(13,8)); encoder<= LF; end if;
      when LF => if encoder_en_i = '1' then 
        encoder_data <= std_logic_vector(to_unsigned(10,8));
        if y = 15 then              
          encoder <= collecting;
          chars_in_buffer <= 0; 
        else
          if chars_in_buffer /= 0 then
            encoder<= sending;
          else
            encoder <= CR;
          end if;
            y<= y+1;
            byte_pos <= 0;
            x<= 0;
            rom_addr <= chars_buffer(0) & STD_LOGIC_VECTOR(TO_UNSIGNED(y + 1,4));
        end if;
      end if;
    end case;
    if (encoder = collecting) or (encoder = full) then
      encoder_empty <= '1';
    else
      encoder_empty <= '0';
    end if;
  end if;
end process;

end Behavioral;
