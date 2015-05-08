library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Pos_Controller is
  port
    (
    L, R, U, D, Move, Reset: in std_logic;
    Init_X, Init_Y: out std_logic_vector(9 downto 0)
  );
end Pos_Controller;

architecture arch of Pos_Controller is
signal x, y: unsigned(9 downto 0):= "0011001000";
begin
Init_X <= std_logic_vector(x);
Init_Y <= std_logic_vector(Y);
Process(Move, reset)
--variable disp : integer := 4;
begin
--if (Move = '1') then
--if(L = '1' and R = '0' and U = '0' and D = '0') then
--x <= x - disp;
--elsif(L = '0' and R = '1' and U = '0' and D = '0') then
--x <= x + disp;
--elsif(L = '0' and R = '0' and U = '1' and D = '0') then
--y <= y - disp;
--elsif(L = '0' and R = '0' and U = '0' and D = '1') then
--y <= y + disp;
--elsif(L = '1' and R = '0' and U = '1' and D = '0') then
--x <= x - disp;
--y <= y - disp;
--elsif(L = '1' and R = '1' and U = '0' and D = '1') then
--x <= x - disp;
--y <= y + disp;
--elsif(L = '0' and R = '1' and U = '1' and D = '0') then
--x <= x + disp;
y <= y - disp;
--elsif(L = '0' and R = '1' and U = '0' and D = '1') then
--x <= x + disp;
--y <= y + disp;

if (reset='1') then
  x<="0011001000";
  y<="0011001000";
  
else if(Falling_edge(move)) then
  if (U='1' and (y>10)) then
    y<=y-"0011001000";
  end if;
  
  if (D='1' and (y < (416-10))) then
    y<=y+"0011001000";
end if;

if (L='1' and (x>10)) then
    x<=x-"0011001000";
  end if;
  
  if (R='1' and (x < (432-10))) then
    x<=x+"0011001000";
end if;

end if;
end process;
end arch;
