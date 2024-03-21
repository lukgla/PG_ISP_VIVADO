----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.03.2024 23:06:48
-- Design Name: 
-- Module Name: lab5a_top - Behavioral
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

entity lab5a_top is
    Port ( clk_i : in STD_LOGIC;
           RXD_i : in STD_LOGIC;
           TXD_o : out STD_LOGIC;
           ld0 : out STD_LOGIC;
           led7_an_o : out STD_LOGIC_VECTOR (3 downto 0);
           led7_seg_o : out STD_LOGIC_VECTOR (7 downto 0));
end lab5a_top;

architecture Behavioral of lab5a_top is
component char_mem IS
  PORT (
    clka : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END component char_mem;
COMPONENT fifo_mem
  PORT (
    clk : IN STD_LOGIC;
    din : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    wr_en : IN STD_LOGIC;
    rd_en : IN STD_LOGIC;
    dout : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    full : OUT STD_LOGIC;
    empty : OUT STD_LOGIC 
  );
END COMPONENT;
COMPONENT one_cycle_enabler is
    Port ( clk_i : in STD_LOGIC;
           en_i : in STD_LOGIC_VECTOR(1 downto 0);
           en_o : out STD_LOGIC
           );
end COMPONENT one_cycle_enabler;
component clockDivider is
    generic (one_cycles: natural:= 100_000 ; zero_cycles: natural := 100_000; initial_state: STD_LOGIC := '0');
    Port ( clk_i : in STD_LOGIC;
           rst_i: in STD_LOGIC;
           clk_o : out STD_LOGIC);
end component clockDivider;
component rs232_reciver is
  Port (
           baud_clk : in STD_LOGIC; -- 16x baudrate
           rst_i : in STD_LOGIC;
           RXD_i : in STD_LOGIC;
           data_o: out std_logic_vector (7 downto 0);
           data_en: out std_logic_vector (1 downto 0)
           );
end component rs232_reciver;

signal rom_addr: std_logic_vector(11 downto 0);
signal rom_data: std_logic_vector(7 downto 0);
--signal fifo_full: std_logic;
signal fifo_empty: std_logic;

signal fifo_data_i: std_logic_vector(7 downto 0);
signal fifo_data_write_enable: std_logic; -- signal should only be there for 1 clk cycle
signal fifo_data_read_enable: std_logic; -- signal should only be there for 1 clk cycle
signal slow_fifo_data_write_enable: std_logic_vector(1 downto 0):= "00"; 
signal slow_fifo_data_read_enable: std_logic_vector(1 downto 0):= "00";
signal fifo_data_o: std_logic_vector(7 downto 0);

-- baudrate
signal baud_clk: std_logic := '0';
constant clock_to_baudrate : natural := 100_000_000 /(16 * 9600)/2;

-- encoder
signal encoder_en: std_logic := '0';
signal encoder_data: std_logic_vector(7 downto 0);
signal slow_encoder_en:std_logic_vector(1 downto 0) := "00";
signal encoder_empty: std_logic := '0';
begin

rom_comp : char_mem
  PORT MAP (
    clka => clk_i,
    addra => rom_addr,
    douta => rom_data
  );

incoming_char_buff : fifo_mem
  PORT MAP (
    clk => clk_i,
    din => fifo_data_i,
    wr_en => fifo_data_write_enable,
    rd_en => fifo_data_read_enable,
    dout => fifo_data_o,
    full => ld0,
    empty => fifo_empty
  );
  
  fifo_write_enabler: one_cycle_enabler 
    PORT MAP (
        clk_i => clk_i,
        en_i => slow_fifo_data_write_enable,
        en_o => fifo_data_write_enable    
    );
    
--fifo_read_enabler: one_cycle_enabler 
--    PORT MAP (
--        clk_i => clk_i,
--        en_i => slow_fifo_data_read_enable,
--        en_o => fifo_data_read_enable    
--    );
    
baudrate_comp: clockDivider generic map( one_cycles => clock_to_baudrate,zero_cycles => clock_to_baudrate) port map(
    clk_i => clk_i,
    rst_i => '0',
    clk_o => baud_clk
);

rs232_recv: rs232_reciver
 PORT map(
    baud_clk => baud_clk,
    rst_i => '0',
    RXD_i => RXD_i,
    data_o => fifo_data_i,
    data_en => slow_fifo_data_write_enable
 );

encoder: process(clk_i)
  type arr_of_chars is array(natural range<>) of std_logic_vector(7 downto 0); 
  variable chars_to_print:  arr_of_chars(17 downto 0);
  variable chars_in_buffer: integer range 0 to 17 := 0;
  variable x: integer range 0 to 17;
  variable y: integer range 0 to 15;
  variable byte_pos: integer range 0 to 7;
  type encoder_type is (collecting,full,sending,CR,LF);
  variable encoder: encoder_type;
  variable en: std_logic := '0';
  variable encoder_char: std_logic_vector(7 downto 0);
begin
  if rising_edge(clk_i) then
    case encoder is
      when collecting =>
        if en = '1' then -- read last requested value
          chars_to_print(chars_in_buffer) := fifo_data_o;
          if chars_in_buffer /= 17 and fifo_data_o /= "00001101" then -- full or enter
              chars_in_buffer := chars_in_buffer + 1;
            else
              encoder := full;
              if chars_in_buffer = 0 then -- the only char in buffer is new line
                encoder := CR;
              end if;
          end if;
        end if;
        if fifo_empty = '0' and encoder = collecting then -- read more
          en:= '1';
        else
          en:= '0';
        end if;
      when full => -- one cycle to request from rom
        rom_addr <= chars_to_print(0) & "0000";
        encoder := sending;
        x := 0;
        y := 0;
        byte_pos := 0;
      when sending => 
        if encoder_en = '1' then
           if chars_to_print(x) > "00100000" and chars_to_print(x) < "01111111" then
            encoder_char := chars_to_print(x);
            else
            encoder_char := std_logic_vector(to_unsigned(character'pos('*'),8));
           end if;
           if rom_data(byte_pos)='1' then
             encoder_data <= encoder_char;
           else
             encoder_data <=std_logic_vector(to_unsigned(character'pos(' '),8));
           end if;
          -- next
          if byte_pos = 7 then
              if x = chars_in_buffer then 
                encoder := CR;                
              else
                x:= x+1;
                byte_pos := 0;
              end if;
            else
              byte_pos := byte_pos + 1;
          end if;
        end if;
      when CR => if encoder_en = '1' then encoder_data <= std_logic_vector(to_unsigned(13,8)); encoder:= LF; end if;
      when LF => if encoder_en = '1' then 
        encoder_data <= std_logic_vector(to_unsigned(10,8));
        if y = 15 then              
          encoder := collecting;
          chars_in_buffer := 0; 
        else
          if chars_in_buffer /= 0 then
            encoder:= sending;
          else
            encoder := CR;
          end if;
            y:= y+1;
            byte_pos := 0;
            x:= 0;
        end if;
      end if;
    end case;
    fifo_data_read_enable <= en;
    if (encoder = collecting) or (encoder = full) then
      encoder_empty <= '1';
    else
      encoder_empty <= '0';
    end if;
  end if;
end process;


sender: process(baud_clk)
    variable byte_pos: integer range 0 to 7;
    type sender_state_type is (waiting_for_data,start,sending,stop);
    variable sender_state: sender_state_type;
    variable clock_16: integer range 0 to 15;
begin
    if rising_edge(baud_clk) then      
        case sender_state is
            when waiting_for_data => if encoder_empty = '0' then
              -- send slow one cycle en
              case slow_encoder_en is
                when "00" | "10" => slow_encoder_en <= "01";
                when others => slow_encoder_en <= "10";
              end case;
              sender_state := start;
              clock_16 := 0;
              TXD_o <= '0';
              byte_pos := 0;
            end if;
            when start => if clock_16 = 15 then sender_state := sending;end if;
            when sending => if clock_16 = 0 then
              TXD_o <= encoder_data(byte_pos);
              if byte_pos = 7 then
                  sender_state := stop;
                else
                  byte_pos := byte_pos +1;
              end if;
            end if;
            when stop => if clock_16 = 0 then 
                TXD_o <= '1';
              elsif clock_16 = 15 then
                sender_state := waiting_for_data;
            end if;
        end case;
    
    
    end if;
end process sender;

encoder_read_enabler: one_cycle_enabler 
    PORT MAP (
        clk_i => clk_i,
        en_i => slow_encoder_en,
        en_o => encoder_en    
    );
    

end Behavioral;
