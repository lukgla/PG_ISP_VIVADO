library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity epitrochoidy_generator is
    Port ( clk_i : in STD_LOGIC;
           ch1_conf : in STD_LOGIC_VECTOR (15 downto 0);
           ch2_conf : in STD_LOGIC_VECTOR (15 downto 0);
           ch_conf_en : in STD_LOGIC_VECTOR (0 downto 0);
           vmem_addr_o : out STD_LOGIC_VECTOR (17 downto 0):=(others => '0');
           vmem_data_o: out STD_LOGIC_VECTOR (0 downto 0):="0";
           vmem_wr_en : out STD_LOGIC_VECTOR (0 downto 0):= "0";
           amp_i: in std_logic_vector(7 downto 0));
end epitrochoidy_generator;

architecture Behavioral of epitrochoidy_generator is
  COMPONENT singen
  PORT (
    aclk : IN STD_LOGIC;
    aclken : IN STD_LOGIC;
    aresetn : IN STD_LOGIC;
    s_axis_config_tvalid : IN STD_LOGIC;
    s_axis_config_tdata : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    s_axis_config_tlast : IN STD_LOGIC;
    m_axis_data_tvalid : OUT STD_LOGIC;
    m_axis_data_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    event_s_config_tlast_missing : OUT STD_LOGIC;
    event_s_config_tlast_unexpected : OUT STD_LOGIC
  );
END COMPONENT;
  signal sgen_en: std_logic := '1';
signal sgen_rst: std_logic := '1';
signal sgen_conf_en: std_logic := '0';
signal sgen_conf_data: std_logic_vector(15 downto 0) := (others => '0');
signal sgen_conf_en2: std_logic := '0';
signal sgen_data_valid: std_logic := '0';
signal sgen_data_data: std_logic_vector(31 downto 0) := (others => '0');

signal sgen_ch_selection: std_logic := '0';
signal vmem_addr: unsigned(17 downto 0) := (others => '0') ;
type sgen_state_type is (generating,prog1,prog2,reset);
signal sgen_state: sgen_state_type := generating;
signal sgen_skip_gen: std_logic := '0';

signal sgen_ch1_data: std_logic_vector(31 downto 0) := (others => '0');
signal sgen_ch2_data: std_logic_vector(31 downto 0) := (others => '0');
signal ch1_amp: unsigned(3 downto 0) := to_unsigned(1,4);
signal ch2_amp: unsigned(3 downto 0) := to_unsigned(1,4);
-- slow calculations
signal slow_en: std_logic := '0';
signal slow_progress: std_logic_vector(5 downto 0) := (others => '0');
signal x,y,x_1,y_1,x_2,y_2: integer := 0;
signal ux1,uy1,ux2,uy2,ux3,uy3,ux4,uy4: unsigned(17 downto 0) := (others => '0');
signal cos1 : signed(10 downto 0) := (others => '0');
signal cos2 : signed(10 downto 0) := (others => '0');
signal sin1 : signed(10 downto 0) := (others => '0');
signal sin2 : signed(10 downto 0) := (others => '0');
signal slow_ready: std_logic := '0';
signal slow_sum: std_logic_vector(17 downto 0):= (others => '0');
begin


sgen : singen
PORT MAP (
    aclk => clk_i,
    aclken => sgen_en,
    aresetn => sgen_rst,
    s_axis_config_tvalid => sgen_conf_en,
    s_axis_config_tdata => sgen_conf_data,
    s_axis_config_tlast => sgen_conf_en2,
    m_axis_data_tvalid => sgen_data_valid,
    m_axis_data_tdata => sgen_data_data,
    event_s_config_tlast_missing => open,
    event_s_config_tlast_unexpected => open
);

sgen_out: process(clk_i)

begin
  if rising_edge(clk_i) then
    vmem_wr_en <= "0";
    if(sgen_state = reset) then
    vmem_addr_o <= std_logic_vector(vmem_addr);
    vmem_wr_en <= "1";
    vmem_data_o <= "0";
    slow_progress <= (others => '0');
    else
      slow_progress <= slow_en & slow_progress(5 downto 1);
      if slow_en = '1' then
        x_1 <= to_integer(cos1) * to_integer(ch1_amp); 
        x_2 <= to_integer(cos2) * to_integer(ch2_amp); -- - 16 * 1024 to 16 * 1024
        y_1 <= to_integer(sin1) * to_integer(ch1_amp);
        y_2 <= to_integer(sin2) * to_integer(ch2_amp);
      end if;
      if slow_progress(5) = '1' then
        x <= x_1 - x_2;
        y <= y_1 - y_2;
      end if;
      if slow_progress(4) = '1' then
        ux1 <= to_unsigned(x,18)+to_unsigned(1024*16,18);
        uy1 <= to_unsigned(y,18)+to_unsigned(1024*16,18);
      end if;
      if slow_progress(3) = '1' then
      ux2 <= ux1 + (ux1 + ux1);
      uy2 <= uy1 + (uy1 + uy1);
    end if;
      if slow_progress(2) = '1' then
      ux3 <= "00000000" & ux2(17 downto 8);
      uy3 <= "00000000" & uy2(17 downto 8);
    end if;
      if slow_progress(1) = '1' then
      uy4<= (uy3(9 downto 0)&"00000000") + (uy3(10 downto 0) & "0000000");
      ux4 <= ux3;
    end if;
      if slow_progress(0) = '1' then
      vmem_addr_o <= std_logic_vector(uy4 + ux4);
      vmem_data_o <= "1";
      vmem_wr_en <= "1";
    end if;
    end if;
  end if;
end process;


sgen_wraper : process( clk_i )
begin
  if rising_edge(clk_i) then
  sgen_conf_en <= '0';
  sgen_rst <= '1';
  slow_en <= '0';
  -- TOOD: read in data and write to aproprierate memory adress
  if sgen_state = reset then

  else
  if sgen_data_valid = '1' then
    if sgen_ch_selection = '0' then
      sgen_ch1_data <= sgen_data_data;
      sgen_ch_selection <= '1';
      else
      sgen_ch2_data <= sgen_data_data; -- remember there is old value
      if sgen_skip_gen = '0' then
        -- 26-16 sinus
        -- 10-0 cosinus
        cos1 <= signed(sgen_ch1_data(10 downto 0));
        sin1 <= signed(sgen_ch1_data(26 downto 16));
        cos2 <= signed(sgen_data_data(10 downto 0));
        sin2 <= signed(sgen_data_data(26 downto 16));
        slow_en <= '1';
        sgen_ch_selection <= '0';
      else
        sgen_skip_gen <= '0';
      end if;
    end if;
  end if ;
end if;
        
  case( sgen_state ) is
    when generating => if ch_conf_en = "1" then
      sgen_state <= prog1;
    end if ;
    when prog1 => 
      sgen_conf_en <= '1';
      sgen_conf_data <= ch1_conf;
      sgen_conf_en2 <= '0';
      sgen_state <= prog2;
      ch1_amp <= unsigned(amp_i(7 downto 4));
      ch2_amp <= unsigned(amp_i(3 downto 0));
    when prog2 =>
      sgen_conf_en <= '1';
      sgen_conf_data <= ch2_conf;
      sgen_conf_en2 <= '1';
      vmem_addr <= (others => '0');
      sgen_state <= reset;
    when reset =>
      sgen_rst <= '0';
      vmem_addr <= vmem_addr + 1;
      if vmem_addr = to_unsigned(384 * 384,18) then
        sgen_state <= generating;
        if(sgen_ch_selection = '0') then
          sgen_skip_gen <= '1';  
        end if;
      end if;
  end case ;
  end if;
end process ; -- sgen_wraper



end Behavioral;
