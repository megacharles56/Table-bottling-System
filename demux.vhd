library ieee;
use ieee.std_logic_1164.all;
entity demux is port (
	z: in std_logic_vector(1 downto 0));	
	s: in std_logic_vector(1 downto 0);
	o: out std_logic_vector(3 downto 0);
end demux;

architecture arqmux4 of demux is 
begin
	 o(0) <= z when s "00" else '0';
	 o(1) <= z when s "01" else '0';
	 o(2) <= z when s "10" else '0';
	 o(3) <= z when s "11" else '0'; 
end arqmux4;