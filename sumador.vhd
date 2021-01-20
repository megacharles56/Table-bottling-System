library ieee;
use ieee.std_logic_1164.all;

entity m_sum is port(
	A, B: in std_logic;
	Suma, Cout: out std_logic);
end m_sum;

architecture am_sum of m_sum is
begin
	Suma <= A xor B;
	Cout <= A and B;
end am_sum;
