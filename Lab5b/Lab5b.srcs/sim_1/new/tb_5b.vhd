----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.03.2024 21:35:43
-- Design Name: 
-- Module Name: tb_5b - Behavioral
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

--Nale?y zweryfikowa? uk?ad praktycznie poprzez zaprogramowanie p?ytki testowej z uk?adem FPGA. W razie potrzeby nale?y wykona? symulacj? funkcjonaln? (nie jest obowi?zkowa). Weryfikacja praktyczna na zaliczenie polega na sprawdzeniu dzia?ania uk?adu na p?ytce poprzez wy?wietlenie kilku figur Lissajous dla ró?nych cz?stotliwo?ci i faz oraz zaprezentowanie rezultatów prowadz?cemu laboratorium:

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
           btn_i : in STD_LOGIC_VECTOR (4 downto 0));
end component top_5b;
begin


end Behavioral;
