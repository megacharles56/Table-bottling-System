library ieee;
use ieee.std_logic_1164.all;
use work.std_arith.all;

entity reg is port (
    D:   in std_logic_vector(0 to 7);
    CLK: in std_logic;
    Q:   out std_logic_vector(0 to 7));
end reg;
architecture arqreg of reg is
begin
    process (clk) begin
        if (CLK 'event and CLK = '1') then
            Q <= D;
        end if;
    end process;
end arqreg;