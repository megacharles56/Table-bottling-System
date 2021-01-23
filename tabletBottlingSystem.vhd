library ieee;
use ieee.std_logic_1164.all;
use work.std_arith.all;

use work.paquete.all;

entity tabletBottlingSystem is
    a: in integer range 0 to 9; --Entrada al codificador
    CLK: in std_logic;
    sal: out std_logic_vector (3 downto 0); -- Salida total del sistema
end tabletBottlingSystem;

architecture funcional of tabletBottlingSystem is
     signal s1 std_logic_vector (3 downto 0); --Salida del Codificador
     signal s2 std_logic_vector (0 to 3)); --Salida del Registro A 
     signal s3 std_logic_vector(6 downto 0)); --Salida del Decodificador A
     --signal s4,s5 bit_vector (1 downto 0) --Salida del Convertidor A
     signal s6 bit --Salida del Contador
     signal 

     
     
     begin
        codif1: codif port map(a, s1);
        regA: reg port map(s1,CLK,s2);
        decoA: deco port map(s2,s3);







end funcional;