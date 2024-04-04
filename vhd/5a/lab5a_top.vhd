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
    Port ( clk_i : in STD_LOGIC := '0';
           RXD_i : in STD_LOGIC := '1';
           TXD_o : out STD_LOGIC := '1';
           ld0 : out STD_LOGIC := '0';
           led7_an_o : out STD_LOGIC_VECTOR (3 downto 0);
           led7_seg_o : out STD_LOGIC_VECTOR (7 downto 0));
end lab5a_top;

architecture Behavioral of lab5a_top is

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
           data_en: out std_logic_vector (1 downto 0);
           clk_i: in std_logic;
           led7_an_o : out STD_LOGIC_VECTOR (3 downto 0);
           led7_seg_o : out STD_LOGIC_VECTOR (7 downto 0)
           );
end component rs232_reciver;
component rs232_sender is
  Port (
    baud_clk: in std_logic;
    queue_empty: in std_logic;
    slow_queue_en: out std_logic_vector (1 downto 0);
    queue_data: in std_logic_vector (7 downto 0);
    TXD_o: out std_logic
   );
end component rs232_sender;
component encoder is
  Port ( 
    clk_i: in std_logic;
    fifo_empty: in std_logic;
    fifo_data: in std_logic_vector(7 downto 0);
    fifo_en_o: out std_logic;
    
    encoder_en_i: in std_logic;
    encoder_empty: out std_logic;
    encoder_data: out std_logic_vector(7 downto 0)
  );
end component encoder;

--signal fifo_full: std_logic;
signal fifo_empty: std_logic := '1';

signal fifo_data_i: std_logic_vector(7 downto 0) := (others => '0');
signal fifo_data_write_enable: std_logic := '0'; -- signal should only be there for 1 clk cycle
signal fifo_data_read_enable: std_logic := '0'; -- signal should only be there for 1 clk cycle
signal slow_fifo_data_write_enable: std_logic_vector(1 downto 0):= "00"; 
--signal slow_fifo_data_read_enable: std_logic_vector(1 downto 0):= "00";
signal fifo_data_o: std_logic_vector(7 downto 0) := (others => '0');

-- baudrate
signal baud_clk: std_logic := '0';
constant clock_to_baudrate : natural := 100_000_000 /(16 * 9600)/2;

-- encoder
signal encoder_en: std_logic := '0';
signal encoder_data: std_logic_vector(7 downto 0) := (others => '0');
signal slow_encoder_en:std_logic_vector(1 downto 0) := "00";
signal encoder_empty: std_logic := '1';
begin


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
    
encoder_com: encoder 
  Port map( 
    clk_i => clk_i,
    fifo_empty => fifo_empty,
    fifo_data => fifo_data_o,
    fifo_en_o => fifo_data_read_enable,
    
    encoder_en_i => encoder_en,
    encoder_empty => encoder_empty,
    encoder_data => encoder_data
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
    data_en => slow_fifo_data_write_enable,
    clk_i => clk_i,
    led7_an_o => led7_an_o,
    led7_seg_o => led7_seg_o
 );



rs232_send: rs232_sender port map(
    baud_clk => baud_clk,
    queue_empty => encoder_empty,
    slow_queue_en => slow_encoder_en,
    queue_data => encoder_data,
    TXD_o => TXD_o
);


encoder_read_enabler: one_cycle_enabler 
    PORT MAP (
        clk_i => clk_i,
        en_i => slow_encoder_en,
        en_o => encoder_en    
    );
    

end Behavioral;
