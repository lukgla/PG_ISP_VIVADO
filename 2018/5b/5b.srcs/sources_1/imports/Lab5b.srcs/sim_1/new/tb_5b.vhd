library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

--Nale?y zweryfikowa? uk?ad praktycznie poprzez zaprogramowanie p?ytki testowej z uk?adem FPGA. W razie potrzeby nale?y wykona? symulacj? funkcjonaln? (nie jest obowi?zkowa). Weryfikacja praktyczna na zaliczenie polega na sprawdzeniu dzia?ania uk?adu na p?ytce poprzez wy?wietlenie kilku figur Lissajous dla r�?nych cz?stotliwo?ci i faz oraz zaprezentowanie rezultat�w prowadz?cemu laboratorium:

--1.    Zaraz po zaprogramowaniu p?ytki powinien si? wy?wietli? okr?g - jako figura zdefiniowana przez ustawienia pocz?tkowe cz?stotliwo?ci i faz. Figura powinna si? sk?ada? z wielu osobnych kropek (du?a cz?stotliwo?? pocz?tkowa).

--2.    Nale?y wy?wietli? figury dla cz?stotliwo?ci w kanale X ustawionej na 1, a  w kanale Y na 2. Ustawi? kolejno fazy kana?u Y na: 0,  ?/2 oraz (3/2)?.

--3.    Nale?y wy?wietli? figury dla cz?stotliwo?ci w kanale X ustawionej na 2, a  w kanale Y na 1. Ustawi? kolejno fazy kana?u Y na: 0,  ?/4 oraz (3/4)?.

--4.    Nale?y wy?wietli? figury dla cz?stotliwo?ci w kana?ach X i Y oraz faz w kanale Y ustawionych wed?ug ??dania prowadz?cego laboratorium.

entity tb_5b is
--  Port ( );
end tb_5b;

architecture Behavioral of tb_5b is
component top_5b is
    Port ( clk_i : in STD_LOGIC;
           red_o : out STD_LOGIC_VECTOR (3 downto 0); -- all ones is white
           green_o : out STD_LOGIC_VECTOR (3 downto 0);
           blue_o : out STD_LOGIC_VECTOR (3 downto 0);
           hsync_o : out STD_LOGIC;
           vsync_o : out STD_LOGIC;
           sw_i : in STD_LOGIC_VECTOR (7 downto 0);
           btn_i : in STD_LOGIC_VECTOR (3 downto 0));
end component top_5b;
signal clk_i: std_logic := '0';
signal red_o:  STD_LOGIC_VECTOR (3 downto 0);
signal green_o:  STD_LOGIC_VECTOR (3 downto 0);
signal blue_o:  STD_LOGIC_VECTOR (3 downto 0);
signal hsync_o: STD_LOGIC;
signal vsync_o: STD_LOGIC;
signal sw_i:  STD_LOGIC_VECTOR (7 downto 0);
signal btn_i:  STD_LOGIC_VECTOR (3 downto 0);
begin
clk_i <= not clk_i after 5 ns;


top_5b_inst: top_5b
port map (
  clk_i   => clk_i,
  red_o   => red_o,
  green_o => green_o,
  blue_o  => blue_o,
  hsync_o => hsync_o,
  vsync_o => vsync_o,
  sw_i    => sw_i,
  btn_i   => btn_i
);



end Behavioral;
