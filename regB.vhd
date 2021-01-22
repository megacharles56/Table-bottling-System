library ieee;
use ieee.std_logic_1164.all;
use work.std_arith.all;

entity regB is port (
    Db:   in std_logic_vector(0 to 7);
    CLKb: in std_logic;
    Qb:   out std_logic_vector(0 to 7));
end regB;
architecture arqreg of regB is
begin
    process (clkB) begin
        if (CLKb 'event and CLKb = '1') then
            Qb <= Db;
        end if;
    end process;
end arqreg;