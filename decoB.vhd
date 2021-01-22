library ieee;
use ieee.std_logic_1164.all;

entity decoB is port (
    Ab: in std_logic_vector(3 downto 0);
    db: out std_logic_vector(6 downto 0));
end decoB;
architecture arqdeco of decoB is
begin
    process (Ab) begin
        case Ab is
	        when "0000" => db <= "0000001";
	        when "0001" => db <= "1001111";
	        when "0010" => db <= "0010010";
	        when "0011" => db <= "0000110";
	        when "0100" => db <= "1001100";
	        when "0101" => db <= "0100100";
	        when "0110" => db <= "0100000";
	        when "0111" => db <= "0001110";
	        when "1000" => db <= "0000000";
	        when "1001" => db <= "0000100";
	        when others => db <= "1111111";
        end case;
    end process;
end arqdeco;