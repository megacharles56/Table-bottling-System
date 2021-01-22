library ieee;
use ieee.std_logic_1164.all;
entity demux is port (
    a,b,c,d: in std_logic_vector(1 downto 0);
	s: in std_logic_vector(1 downto 0);
	z: out std_logic_vector(1 downto 0));
end demux;

architecture arqmux4 of demux is 
begin
with s select
Z<= a when "00",
	b when "01",
	c when "10",
	d when others;
end arqmux4;