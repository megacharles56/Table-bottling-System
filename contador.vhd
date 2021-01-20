library ieee;
use ieee.std_logic_1164.all;
use work.std_arith.all;

entity pcount is port(
	E: inout std_logic;
	DI: inout std_logic_vector (0 to 7);
	PC: inout std_logic_vector (3 downto 0));
end pcount;

architecture a_pc of pcount is
begin
	process (E) begin
		if (E 'event and E = '1') then
			PC <= PC + 1;
				if (DI = "00000001") then
					PC <= "0000";
				end if;
		end if;
	end process;
end a_pc;
