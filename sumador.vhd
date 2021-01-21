library ieee;
use ieee.std_logic_1164.all;

entity sumador is port(
	A, B: in std_logic;
	Suma, Cout: out std_logic);
end sumador;

architecture am_sum of sumador is
begin
	Suma <= A xor B;
	Cout <= A and B;
end am_sum;
