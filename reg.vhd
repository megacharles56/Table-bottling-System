library ieee;
use ieee.std_logic_1164.all;
entity reg is port (
    D:   in std_logic_vector(0 to 7);
    clk: in std_logic;
    Q:   out std_logic_vector(0 to 7));
end reg ;
architecture arqreg of reg is
begin
    process (clk) begin
        if (clk'event and clk='l') then
            Q <= D;
        end if;
    end process;
end arqreg;