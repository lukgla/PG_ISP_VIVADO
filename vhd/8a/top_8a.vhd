library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity top_8a is
  port (
        clk_i : in STD_LOGIC;
        red_o : out STD_LOGIC_VECTOR (3 downto 0); -- all ones is white
        green_o : out STD_LOGIC_VECTOR (3 downto 0);
        blue_o : out STD_LOGIC_VECTOR (3 downto 0);
        hsync_o : out STD_LOGIC; -- short negative impuls set carret to next line
        vsync_o : out STD_LOGIC; -- long negative impuls set carret to start of screen
        sw_i : in STD_LOGIC_VECTOR (7 downto 0);
        btn_i : in STD_LOGIC_VECTOR (3 downto 0)
  );
end entity;

architecture Behavioral of top_8a is
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
-- vmem
signal vmem_i_addr: STD_LOGIC_VECTOR(17 DOWNTO 0) := (others => '0');
signal vmem_o_addr: STD_LOGIC_VECTOR(17 DOWNTO 0) := (others => '0');
signal vmem_i_en: std_logic_vector(0 downto 0) := "0";
signal vmem_i_data: std_logic_vector(0 downto 0):= "0";
signal vmem_o_data: std_logic_vector(0 downto 0):= "0";

-- sgen
signal sgen_ch1_conf: std_logic_vector(15 downto 0) := (others => '0'); -- phase,hz
signal sgen_ch2_conf: std_logic_vector(15 downto 0) := (others => '0'); -- phase,hz
alias sgen_ch1_conf_hz: std_logic_vector is sgen_ch1_conf(15 downto 0);
alias sgen_ch2_conf_hz: std_logic_vector is sgen_ch2_conf(15 downto 0);
signal sgen_conf_en: std_logic_vector(0 downto 0) := "0";
signal sgen_amp: std_logic_vector(7 downto 0) := (others => '0');

--button
signal btn_dbounced: std_logic_vector(3 downto 0):= (others => '0');

begin
vmem : video_mem
    PORT MAP (
      clka => clk_i,
      wea => vmem_i_en,
      addra => vmem_i_addr,
      dina => vmem_i_data,
      clkb => clk_i,
      addrb => vmem_o_addr,
      doutb => vmem_o_data
    );

epitrochoidy_generator_inst: entity work.epitrochoidy_generator
port map (
  clk_i       => clk_i,
  ch1_conf    => sgen_ch1_conf,
  ch2_conf    => sgen_ch2_conf,
  ch_conf_en  => sgen_conf_en,
  vmem_addr_o => vmem_i_addr,
  vmem_data_o => vmem_i_data,
  vmem_wr_en  => vmem_i_en,
  amp_i       => sgen_amp
);

vga_renderer_inst: entity work.vga_renderer
    port map (
      clk_i       => clk_i,
      red_o       => red_o,
      green_o     => green_o,
      blue_o      => blue_o,
      hsync_o     => hsync_o,
      vsync_o     => vsync_o,
      vmem_addr_o => vmem_o_addr,
      vmem_data_i => vmem_o_data
      );

    btn_proc: process (clk_i)
    begin
      if rising_edge(clk_i) then
        btn_dbounced <= btn_i;
      end if;
    end process btn_proc;

    sw_proc: process(clk_i)
    begin
      sgen_conf_en <= "0";
      if rising_edge(clk_i) then
        if btn_dbounced(3) = '1' then
          sgen_ch1_conf_hz <= "00000000" & sw_i;
        end if;
        if btn_dbounced(2) = '1' then
          sgen_ch2_conf_hz <= "00000000" & sw_i;
        end if;
        if btn_dbounced(1) = '1' then
          sgen_amp <= sw_i;
        end if;
        if btn_dbounced(0) = '1' then -- program
          sgen_conf_en <= "1";
        end if;
      end if;
    end process sw_proc;


end architecture;
