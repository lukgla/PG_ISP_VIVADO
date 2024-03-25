----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.03.2024 20:59:31
-- Design Name: 
-- Module Name: top_5b - Behavioral
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

entity top_5b is
    Port ( clk_i : in STD_LOGIC;
           red_o : out STD_LOGIC_VECTOR (3 downto 0); -- all ones is white
           green_o : out STD_LOGIC_VECTOR (3 downto 0);
           blue_o : out STD_LOGIC_VECTOR (3 downto 0);
           hsync_o : out STD_LOGIC; -- short negative impuls set carret to next line
           vsync_o : out STD_LOGIC; -- long negative impuls set carret to start of screen
           sw_i : in STD_LOGIC_VECTOR (7 downto 0);
           btn_i : in STD_LOGIC_VECTOR (4 downto 0));
end top_5b;

architecture Behavioral of top_5b is
COMPONENT video_mem
  PORT (
    clka : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    clkb : IN STD_LOGIC;
    addrb : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    doutb : OUT STD_LOGIC_VECTOR(0 DOWNTO 0) 
  );
END COMPONENT;
COMPONENT singen
  PORT (
    aclk : IN STD_LOGIC;
    aclken : IN STD_LOGIC; -- stop generator by 0 (signal must be on while changing config)
    aresetn : IN STD_LOGIC;
    s_axis_config_tvalid : IN STD_LOGIC; -- enable config
    s_axis_config_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0); -- 31 downto 16 is phase, 15-0 is hz
    s_axis_config_tlast : IN STD_LOGIC; -- enable config for second channel
    m_axis_data_tvalid : OUT STD_LOGIC; -- if m_axis_data_tdata is valid
    m_axis_data_tdata : OUT STD_LOGIC_VECTOR(15 DOWNTO 0); -- znacz?cze 10 downto 0
    event_s_config_tlast_missing : OUT STD_LOGIC; -- left open
    event_s_config_tlast_unexpected : OUT STD_LOGIC -- left open
  );
END COMPONENT;
-- First channel phase must be 0
begin
--your_instance_name : video_mem
--  PORT MAP (
--    clka => clka,
--    wea => wea,
--    addra => addra,
--    dina => dina,
--    clkb => clkb,
--    addrb => addrb,
--    doutb => doutb
--  );
--your_instance_name : singen
--  PORT MAP (
--    aclk => aclk,
--    aclken => aclken,
--    aresetn => aresetn,
--    s_axis_config_tvalid => s_axis_config_tvalid,
--    s_axis_config_tdata => s_axis_config_tdata,
--    s_axis_config_tlast => s_axis_config_tlast,
--    m_axis_data_tvalid => m_axis_data_tvalid,
--    m_axis_data_tdata => m_axis_data_tdata,
--    event_s_config_tlast_missing => event_s_config_tlast_missing,
--    event_s_config_tlast_unexpected => event_s_config_tlast_unexpected
--  );

-- video_output is 384x384
-- displayed on 640x480
-- generate starting from center and it have to be square
-- Generate in White-Black (all color = 1 is white)

--Cz?stotliwo?? obu kana?ów (X i Y) i faz? jednego (Y) ustawiamy za pomoc? prze??czników SW0-SW7 (zakres 0-255) i przycisków BTNL (wpis cz?stotliwo?ci X ustawionej na prze??cznikach), BTNC (wpis cz?stotliwo?ci Y ustawionej na prze??cznikach), BTNR (wpis offsetu fazy Y ustawionej na prze??cznikach).
--Przycisk BTND powinien s?u?y? do wyczyszczenia ekranu i zresetowania generatora DDS (aby rozpocz?? rysowanie figur od ustawionej fazy dla kana?u Y i fazy 0 dla kana?u X).
--Kana? X to Channel 1 (patrz opis komponentu DDS poni?ej). Wspó?rz?dne ujemne s? po lewej stronie ekranu dodatnie po prawej. Amplituda kana?u powinna by? tak dobrana aby krzywa w pe?ni wykorzysta?a dost?pny ekran.
--Kana? Y to Channel 2 (patrz opis komponentu DDS poni?ej). Wspó?rz?dne ujemne s? na dole ekranu dodatnie na górze. Amplituda kana?u powinna by? tak dobrana aby krzywa w pe?ni wykorzysta?a dost?pny ekran.
--Wspó?rz?dne (0,0) s? w ?rodku ekranu.
-- W tym ?wiczeniu nie korzystamy z sygna?u „reset". Prosz? zamiast tego stosowa? warto?ci pocz?tkowe sygna?ów i zmiennych.

--btn_i(3) - przycisk BTNL
--btn_i(2) - przycisk BTNC
--btn_i(1) - przycisk BTNR
--btn_i(0) - przycisk BTND

end Behavioral;
