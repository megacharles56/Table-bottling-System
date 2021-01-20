library ieee;
use ieee.std_logic_1164.all;
entity comp is
port (a,b: in bit_vector(1 downto 0);
		c: out bit);
end comp;
architecture funcional of comp is 
begin
compara: process (a,b)
begin
	if a=b then 
		c<='1';
	else
		c<='0';
end if;
end process compara;
end funcional;
