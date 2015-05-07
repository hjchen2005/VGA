library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity vga_sync is
port(
clk,reset: in std_logic;
hsync,vsync: out std_logic;
video_on: out std_logic;
pixel_x,pixel_y: out std_logic_vector (9 downto 0)
);
end vga_sync;

architecture arch of vga_sync is
constant HD: integer:=640;
constant HF: integer:=16;
constant HB: integer:48;
constant HR: integer:96;
constant VD: integer:=480;
constant VF: integer:=11;
constant vb: integer:=31;
constant VR: integer:=2;

signal current_mod2, next_mod2: std_logic;
signal current_v_count, next_v_count: unsigned(9 downto 0);
signal current_h_count, next
signal
signal
signal
