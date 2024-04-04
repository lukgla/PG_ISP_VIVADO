library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.ALL;
use IEEE.numeric_std.all;

entity tb is
end tb;

architecture Behavioral of tb is
component encoder_display is
    Port ( clk_i : in STD_LOGIC;
           btn_i : in STD_LOGIC_VECTOR (3 downto 0);
           sw_i : in STD_LOGIC_VECTOR (7 downto 0);
           led7_an_o : out STD_LOGIC_VECTOR (3 downto 0);
           led7_seg_o : out STD_LOGIC_VECTOR (7 downto 0));
end component encoder_display;

    signal clk_i: std_logic:= '0';
    signal btn_i: std_logic_vector (3 downto 0) := (others => '0');
    signal sw_i_dots: std_logic_vector (3 downto 0) := (3 | 1 => '1',others => '0');
    signal sw_i_value: std_logic_vector (3 downto 0) := (others => '0');
    signal led7_an_o : std_logic_vector (3 downto 0);
    signal led7_seg_o: std_logic_vector (7 downto 0);
    signal sw_i: std_logic_vector(7 downto 0);
begin

    clk_i <= not clk_i after 5 ns;
    sw_i <= sw_i_dots & sw_i_value;

    btn: process
    begin
        for i in 3 downto 0 loop
            btn_i(i) <= '1';
            wait for 0.5 ms;
            sw_i_value(3 downto 0) <= sw_i_value(3 downto 0) + 5; 
            wait for 0.5 ms;
            btn_i(i) <= '0';
            wait for 2 ms;
        end loop;
        -- dots
        sw_i_dots <= sw_i_dots(0) & sw_i_dots(3 downto 1); 
        wait for 3 ms;
    end process;

--    sw4:process (btn_i)
--    begin
--        if btn_i > 0 then -- any button on
           
--        end if;
--    end process;


tested: encoder_display port map(
    clk_i => clk_i,
    btn_i => btn_i,
    sw_i => sw_i,
    led7_an_o => led7_an_o,
    led7_seg_o => led7_seg_o
);

end Behavioral;
