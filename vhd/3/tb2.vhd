

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.ALL;
use IEEE.numeric_std.all;

entity tb is
end tb;

architecture Behavioral of tb is
component top is
    Port ( clk_i : in STD_LOGIC;
           btn_i : in STD_LOGIC_VECTOR (3 downto 0);
           sw_i : in STD_LOGIC_VECTOR (7 downto 0);
           led7_an_o : out STD_LOGIC_VECTOR (3 downto 0);
           led7_seg_o : out STD_LOGIC_VECTOR (7 downto 0));
end component top;

    signal clk_i: std_logic:= '0';
    signal btn_i: std_logic_vector (3 downto 0) := (others => '0');
    signal sw_i: std_logic_vector (7 downto 0) := (7 | 5 => '1',others => '0');
    signal led7_an_o : std_logic_vector (3 downto 0);
    signal led7_seg_o: std_logic_vector (7 downto 0);

begin

    clk_i <= not clk_i after 50 ms;

    btn: process
    begin
        for i in 3 downto 0 loop
            btn_i(i) <= '1';
            wait for 1 ms;
            btn_i(i) <= '0';
            wait for 2 ms;
        end loop;
        -- dots
        sw_i(7 downto 4) <= sw_i(7 downto 4) ROR 1; 
        wait for 3 ms;
    end process;

    sw4:process (btn_i)
    begin
        if btn_i > 0 then -- any button on
           sw_i(3 downto 0) <= sw_i(3 downto 0) + 5; 
        end if;
    end process;


tested: top port map(
    clk_i => clk_i,
    btn_i => btn_i,
    sw_i => sw_i,
    led7_an_o => led7_an_o,
    led7_seg_o => led7_seg_o
);

end Behavioral;
