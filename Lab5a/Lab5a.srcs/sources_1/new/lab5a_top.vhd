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
signal fifo_full: std_logic;
signal fifo_empty: std_logic;

signal fifo_data_i: std_logic_vector(7 downto 0);
signal fifo_data_write_enable: std_logic; -- signal should only be there for 1 clk cycle
signal fifo_data_read_enable: std_logic; -- signal should only be there for 1 clk cycle
signal slow_fifo_data_write_enable: std_logic_vector(1 downto 0); 
signal slow_fifo_data_read_enable: std_logic_vector(1 downto 0);
signal fifo_data_o: std_logic_vector(7 downto 0);

-- baudrate
signal baud_clk: std_logic := '0';
constant clock_to_baudrate : natural := 100_000_000 /(16 * 9600)/2;

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
    full => fifo_full,
    empty => fifo_empty
  );
  
  fifo_write_enabler: one_cycle_enabler 
    PORT MAP (
        clk_i => clk_i,
        en_i => slow_fifo_data_write_enable,
        en_o => fifo_data_write_enable    
    );
    
fifo_read_enabler: one_cycle_enabler 
    PORT MAP (
        clk_i => clk_i,
        en_i => slow_fifo_data_read_enable,
        en_o => fifo_data_read_enable    
    );
    
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

sender: process(baud_clk)
    variable chars_to_print:  string(17 downto 0);
    variable chars_in_buffer: integer range 17 downto 0 := 0;
    variable x: integer range 0 to 17;
    variable y: integer range 0 to 15;
    variable byte_pos: integer range 0 to 7;
    type sender_state_type is (waiting_for_data,start,sending,stop);
    variable sender_state: sender_state_type;
begin
    if rising_edge(baud_clk) then
        if sender_state = waiting_for_data then
            
        end if;
        
        case sender_state is
            when waiting_for_data => null;
            when start => null;
            when sending => null;
            when stop => null;
        end case;
    
    
    end if;
end process sender;

end Behavioral;
