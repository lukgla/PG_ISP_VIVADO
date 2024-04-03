----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.03.2024 18:59:12
-- Design Name: 
-- Module Name: vga_renderer - Behavioral
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
use IEEE.numeric_std.all;

entity vga_renderer is
    Port ( clk_i : in STD_LOGIC;
           red_o : out STD_LOGIC_VECTOR (3 downto 0);
           green_o : out STD_LOGIC_VECTOR (3 downto 0);
           blue_o : out STD_LOGIC_VECTOR (3 downto 0);
           hsync_o : out STD_LOGIC;
           vsync_o : out STD_LOGIC;
           vmem_addr_o : out STD_LOGIC_VECTOR (17 downto 0);
           vmem_data_i : in STD_LOGIC_VECTOR (0 downto 0));
end vga_renderer;

architecture Behavioral of vga_renderer is

component clockDivider is
    generic (one_cycles: natural:= 100_000 ; zero_cycles: natural := 100_000; initial_state: STD_LOGIC := '0');
    Port ( clk_i : in STD_LOGIC;
            rst_i: in STD_LOGIC;
            clk_o : out STD_LOGIC);
end component clockDivider;
signal vga_clk: std_logic := '0';
-- track display
signal vga_x: integer range 0 to 639 := 0;
signal vga_y: integer range 0 to 479 := 0;
signal vga_pixel: unsigned(17 downto 0) := (others => '0');
-- track state duration
signal vga_h_counter: integer range 0 to 800 := 0;
signal vga_v_counter: integer range 0 to 525 := 0;
-- track color 0=black 1=white;
signal vga_color: std_logic := '0';
-- track current state
type vga_state_h_type is (
active, -- 640
front, -- 16
sync, -- 96
back -- 48
);
type vga_h_step_type is array(vga_state_h_type) of natural;
constant vga_h_step: vga_h_step_type := (
  active => 640,
  front => 16,
  sync => 96,
  back => 48
);
constant state_h_active_steps: natural := 640 - 1;
constant state_h_front_steps: natural := 16-1;
constant state_h_sync_steps: natural := 96-1;
constant state_h_back_steps: natural := 48-1;
type vga_v_step_type is array(vga_state_h_type) of natural;
constant vga_v_step: vga_v_step_type := (
  active => 480,
  front => 10,
  sync => 2,
  back => 33
);
type vga_state_v_type is (
active, -- 480
front, -- 10
sync, -- 2
back -- 33
);
constant state_v_active_steps: natural := 480 - 1;
constant state_v_front_steps: natural := 10-1;
constant state_v_sync_steps: natural := 2-1;
constant state_v_back_steps: natural := 33-1;
signal vga_h_state: vga_state_h_type := active;
signal vga_v_state: vga_state_v_type := active;

signal vmem_addr: std_logic_vector(17 downto 0) := (others => '0');
begin

red_o <= (others => vga_color);
green_o <= (others => vga_color);
blue_o <= (others => vga_color);
vmem_addr_o <= vmem_addr;

clk_4: clockDivider
generic map (
  one_cycles => 4, -- 25 Mhz
  zero_cycles => 4
)
port map (
  clk_i => clk_i,
  rst_i => '0',
  clk_o => vga_clk
);

vga_state_machine:  process( vga_clk )
variable next_v_stage: boolean := false;
begin
  if rising_edge(vga_clk) then
    vga_h_counter <= vga_h_counter + 1;
    case vga_h_state is
      when active => 
        if vga_h_counter = vga_h_step(active) then
          vga_h_counter <= 0;
          vga_h_state <= front;
        end if;
      when front =>         
        if vga_h_counter = vga_h_step(front) then
          vga_h_counter <= 0;
          vga_h_state <= sync;
        end if;
      when sync =>         
        if vga_h_counter = vga_h_step(sync) then
          vga_h_counter <= 0;
          vga_h_state <= back;
        end if;
      when back =>
        if vga_h_counter = vga_h_step(back) then
          vga_h_counter <= 0;
          vga_h_state <= active;
          next_v_stage := true;
        end if;
    end case;
    if next_v_stage = true then
      next_v_stage := false;
      vga_v_counter <= vga_v_counter+1;
      case vga_v_state is
        when active => 
          if vga_v_counter = vga_v_step(active) then
            vga_v_counter <= 0;
            vga_v_state <= front;
          end if ;
        when front =>
        if vga_v_counter = vga_v_step(front) then
          vga_v_counter <= 0;
          vga_v_state <= sync;
        end if ;
        when sync =>
        if vga_v_counter = vga_v_step(sync) then
          vga_v_counter <= 0;
          vga_v_state <= back;
        end if ;
        when back =>
        if vga_v_counter = vga_v_step(back) then
          vga_v_counter <= 0;
          vga_v_state <= active;
        end if ;
      end case;
    end if;  
  end if;
end process;

vga_signal : process( vga_clk)
begin
  if rising_edge(vga_clk) then    
    if vga_h_state = active and vga_v_state = active then
      vga_color <= '0';
      vga_x <= vga_x + 1;
      if vga_y >= (480- 384)/2 and vga_y < ((480- 384)/2+384) then
        if vga_x >= (640- 384)/2 and vga_x < ((640- 384)/2+384) then
        if vmem_data_i /= "0" then
          vga_color <= '1';
        end if;
          vga_pixel <= vga_pixel + 1;
          vmem_addr <= std_logic_vector(vga_pixel + 1);          
        end if;
      end if;
    end if ;
    if vga_h_state = front and vga_h_state = 0 then
      vga_y <= vga_y + 1;
      if vga_y = 480 - 1 then
        vga_y <= 0;
        vga_pixel <= (others => '0');
        vmem_addr <= (others => '0'); 
      end if;  
      vga_x <= 0;
    end if;
  end if;
end process;

sync_proc: process(clk)
begin
  if rising_edge(clk) then
    vsync_o <= '1';
    hsync_o <= '1';
    if(vga_h_state = sync) then
      hsync_o <= '0';
    end if;
    if(vga_v_state = sync) then
      vsync_o <= '0';
    end if;
  end if;
end process;