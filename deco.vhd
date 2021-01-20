library ieee;

use ieee.std_logic_1164.all ;
entity deco is port (
    A: in std_logic_vector(3 downto 0);
        d: out std_logic_vector(6 downto 0));
end deco;
architecture arqdeco of deco is
begin
    process (A) begin
        case A is
        when "0000" = > d
        when "0001" = > d
        when "0010" = > d
        when "0011" = > d
        when "0100" = > d
        when "0101"
        d
        when "0110" = > d
        when "0111"
        d
        when "1000" = > d
        when "1001" = > d
        when others = > d
        end case;
    end process;
end arqdeco;