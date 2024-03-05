library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
entity tb is
end tb;


architecture bechaviour of tb is
component top is
    Port ( 
    clk_i : in STD_LOGIC; -- zegar 100MHz
    rst_i : in STD_LOGIC;
    RXD_i : in STD_LOGIC;
    led7_an_o : out STD_LOGIC_VECTOR (3 downto 0);
    led7_seg_o : out STD_LOGIC_VECTOR (7 downto 0)
    );
end component top;
variable data: std_logic_vector(7 downto 0)
signal RXD_i: std_logic := '1';
constant baut_rate: time := 1/9600 s
signal clk_i: STD_LOGIC := '1';
signal rst_i: STD_LOGIC := '0';
signal led7_an_o: STD_LOGIC_VECTOR (3 downto 0);
signal led7_seg_o: STD_LOGIC_VECTOR (7 downto 0);
begin
    top_cm: top port map(
        clk_i => clk_i,
        rst_i => rst_i,
        RXD_i => RXD_i,
        led7_an_o => led7_an_o,
        led7_seg_o => led7_seg_o
    );

    clk_i <= not clk_i after 5 ns;

process
begin
    rst_i <= '1';
    wait for baut_rate;
    rst_i <= '0';
    for number in 255 downto 0 loop
        data <= number;
        RXD_i <= '0';
        wait for baut_rate;
        for i in 0 to 7 loop
            RXD_i <= data(i);
            wait for baut_rate;
        end loop;
        RXD_i <= '1';
        wait for baut_rate;
    end loop;
end process;

end architecture bechaviour;
