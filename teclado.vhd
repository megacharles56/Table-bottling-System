library ieee;
use ieee.std_logic_1164.all;
use work.std_arith.all;

entity teclado is port(
    boton: in std_logic_vector (0 to 9);--teclado
    C: out std_logic_vector (3 downto 0);
    tecla: out  std_logic_vector (1 downto 0);-- teclas presionadas

architecture Behavioral of teclado is
    variable i: std_logic_vector (1 downto 0):= "00";
    begin
        if (boton = "1000000000") then
            C <= "0000";tecla <= i;
        elsif (boton = "0100000000") then
            C <= "0001";tecla <= i;
        elsif (boton = "0010000000") then
            C <= "0010";tecla <= i;
        elsif (boton = "0001000000") then
            C <= "0011";tecla <= i;
        elsif (boton = "0000100000") then
            C <= "0100";tecla <= i;
        elsif (boton = "0000010000") then
            C <= "0101";tecla <= i;
        elsif (boton = "0000001000") then
            C <= "0110";tecla <= i;
        elsif (boton = "0000000100") then
            C <= "0111";tecla <= i;
        elsif (boton = "0000000010") then
            C <= "1000";tecla <= i;
        else
            C <= "1001";tecla <= i;
        end if;
        
            if (tecla = "00") then
                RB <= C;
            else
                RA <= C;
            end if;
        
            i := i+1;
        
        if (i = "10") then
            i := "00";
        end if;
end Behavioral;