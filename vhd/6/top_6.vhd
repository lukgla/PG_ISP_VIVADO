
library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity top_6 is
  port (
    clk_i: in std_logic;
    rst_i: in std_logic;
    button_i: in std_logic_vector(3 downto 0) ;
    led7_an_o: out std_logic_vector(3 downto 0) ;
    led7_seg_o: out std_logic_vector(7 downto 0)
  );
end entity;

architecture Behavioral of top_6 is
  component kcpsm6 
  generic(                 hwbuild : std_logic_vector(7 downto 0) := X"00";
                  interrupt_vector : std_logic_vector(11 downto 0) := X"3FF";
           scratch_pad_memory_size : integer := 64);
  port (                   address : out std_logic_vector(11 downto 0);
                       instruction : in std_logic_vector(17 downto 0);
                       bram_enable : out std_logic;
                           in_port : in std_logic_vector(7 downto 0);
                          out_port : out std_logic_vector(7 downto 0);
                           port_id : out std_logic_vector(7 downto 0);
                      write_strobe : out std_logic;
                    k_write_strobe : out std_logic;
                       read_strobe : out std_logic;
                         interrupt : in std_logic;
                     interrupt_ack : out std_logic;
                             sleep : in std_logic;
                             reset : in std_logic;
                               clk : in std_logic);
end component;
component pblaze_6                             
generic(             C_FAMILY : string := "S6"; 
            C_RAM_SIZE_KWORDS : integer := 1;
         C_JTAG_LOADER_ENABLE : integer := 0);
Port (      address : in std_logic_vector(11 downto 0);
        instruction : out std_logic_vector(17 downto 0);
             enable : in std_logic;
                rdl : out std_logic;                    
                clk : in std_logic);
end component;
signal         address : std_logic_vector(11 downto 0);
signal     instruction : std_logic_vector(17 downto 0);
signal     bram_enable : std_logic;
signal         in_port : std_logic_vector(7 downto 0):= (others => '0');
signal        out_port : std_logic_vector(7 downto 0);
signal         port_id : std_logic_vector(7 downto 0);
signal    write_strobe : std_logic;
signal  k_write_strobe : std_logic;
signal     read_strobe : std_logic;
signal       interrupt : std_logic;
signal   interrupt_ack : std_logic;
signal    kcpsm6_sleep : std_logic;
signal    kcpsm6_reset : std_logic;

signal digit_i : STD_LOGIC_VECTOR (31 downto 0);

begin
  processor: kcpsm6
  generic map (                 hwbuild => X"00", 
                       interrupt_vector => X"7FF",
                scratch_pad_memory_size => 64)
  port map(      address => address,
             instruction => instruction,
             bram_enable => bram_enable,
                 port_id => port_id,
            write_strobe => write_strobe,
          k_write_strobe => k_write_strobe,
                out_port => out_port,
             read_strobe => read_strobe,
                 in_port => in_port,
               interrupt => interrupt,
           interrupt_ack => interrupt_ack,
                   sleep => kcpsm6_sleep,
                   reset => rst_i,
                     clk => clk_i
  );
  
  kcpsm6_sleep <= '0';
  interrupt <= interrupt_ack;

  program_rom: pblaze_6                    --Name to match your PSM file
    generic map(             C_FAMILY => "7S",   --Family 'S6', 'V6' or '7S'
                    C_RAM_SIZE_KWORDS => 2,      --Program size '1', '2' or '4'
                 C_JTAG_LOADER_ENABLE => 0)      --Include JTAG Loader when set to '1' 
    port map(      address => address,      
               instruction => instruction,
                    enable => bram_enable,
                       rdl => kcpsm6_reset,
                       clk => clk_i
    );

  input_ports: process(clk_i)
  begin
    if rising_edge(clk_i) then
         in_port <= "0000" & button_i;
    end if;

  end process input_ports;

  output_ports: process(clk_i)
  begin

    if rising_edge(clk_i) then

      -- 'write_strobe' is used to qualify all writes to general output ports.
      if write_strobe = '1' then

        if port_id(0) = '1' then
          digit_i(7 downto 0) <= out_port;
        end if;

        if port_id(1) = '1' then
          digit_i(15 downto 8) <= out_port;
        end if;

        if port_id(2) = '1' then
          digit_i(23 downto 16) <= out_port;
        end if;

        if port_id(3) = '1' then
          digit_i(31 downto 24) <= out_port;
        end if;

      end if;

    end if; 

  end process output_ports;

display_inst: entity work.display
port map (
  clk_i      => clk_i,
  rst_i      => rst_i,
  digit_i    => digit_i,
  led7_an_o  => led7_an_o,
  led7_seg_o => led7_seg_o
);

  end architecture;