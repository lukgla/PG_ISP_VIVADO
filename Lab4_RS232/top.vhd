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
    signal baud_clk: std_logic;
begin

    process(baud_clk)
    variable bit_nr: STD_LOGIC_VECTOR (3 downto 0); 
    -- from lsb to msb
    variable bits: STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
    variable is_transmiting: std_logic := '0';
    begin
        if is_transmiting then
            
            
        elsif RXD_i = '0' then
            is_transmiting := '1';
        end if;
    end process;
    
    
    
end architecture bechaviour;