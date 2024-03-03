
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity top is
    Port ( clk_i : in STD_LOGIC; -- zegar 100MHz
           rst_i : in STD_LOGIC;
           RXD_i : in STD_LOGIC;
           led7_an_o : out STD_LOGIC_VECTOR (3 downto 0);
           led7_seg_o : out STD_LOGIC_VECTOR (7 downto 0));
end top;

-- 1/9600 <- 10^-8

-- 10^8 / x = 9600
-- 10^8 / 9600 = x
-- 19200

architecture bechaviour of top is
    component clockDivider is
        generic (one_cycles: natural:= 10 ; zero_cycles: natural := 10; initial_state: STD_LOGIC := '0');
        Port ( clk_i : in STD_LOGIC;
               rst_i: in STD_LOGIC;
               clk_o : out STD_LOGIC);
    end component clockDivider;
    component display is
        Port ( clk_i : in STD_LOGIC;
               rst_i: in STD_LOGIC;
               digit_i : in STD_LOGIC_VECTOR (31 downto 0);
               led7_an_o : out STD_LOGIC_VECTOR (3 downto 0);
               led7_seg_o : out STD_LOGIC_VECTOR (7 downto 0));
    end component display;

    signal baud_clk: std_logic; -- 16x 9600 raising edges
    constant baud_clk_divider: natural := 561;
    signal digit_i: in STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
begin

    disp: display port map(
        clk_i => clk_i,
        rst_i => rst_i,
        digit_i => digit_i,
        led7_an_o => led7_an_o,
        led7_seg_o => led7_seg_o
    );

    baud_rate: clockDivider map(one_cycles => baud_clk_divider, zero_cycles => baud_clk_divider) port map(
        clk_i => clk_i,
        rst_i => '0',
        clk_o => baud_clk
    );

    process(baud_clk,RXD_i)
        variable bit_nr: STD_LOGIC_VECTOR (3 downto 0); 
    -- from lsb to msb
        variable bits: STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
        variable is_transmiting: std_logic := '0';
        variable check_end: std_logic := '0';

        variable clock_divider:= STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
    begin
        if is_transmiting then
            if clock_divider = 7 then -- read cycle
                if check_end then
                    check_end := '0';
                    if RXD_i /= '1' then
                        null; -- sequence was not stoped properly
                    end if;
                    is_transmiting := '0';
                else
                    bits := bits ROR 1;
                    bits(7) = RDI_i;
                    bit_nr := bit_nr + 1;

                    if bits == 0 then -- last bit was read
                        check_end := '1';
                        digit_i(31 downto 24) <= bits;
                    end if;
                end if;
            end if;
            clock_divider := clock_divider + 1;          
        elsif falling_edge(RXD_i) then -- detect transmition start
            is_transmiting := '1';
            bit_nr := (others => '0');
            clock_divider := (others => '0');
        end if;
    end process;
    
    
    
end architecture bechaviour;