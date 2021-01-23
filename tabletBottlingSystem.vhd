library ieee;
use ieee.std_logic_1164.all;
use work.std_arith.all;

use work.paquete.all;

entity tabletBottlingSystem is
    a: in integer range 0 to 9; --Entrada al codificador
    CLK: in std_logic;
    sal: out std_logic_vector (3 downto 0); -- Salida total del sistema
    CARRY: in std_logic_vector(6 downto 0);
    X: in std_logic_vector(1 downto 0);
    E: inout std_logic;
	DI: inout std_logic_vector (0 to 7);
    PC: inout std_logic_vector (3 downto 0));
    RA : in std_logic_vector(3 downto 0);
    RB : in std_logic_vector(3 downto 0);
    E: inout std_logic;
    s: in std_logic_vector(1 downto 0);
end tabletBottlingSystem;

architecture funcional of tabletBottlingSystem is
     signal s1 std_logic_vector (3 downto 0); --Salida del Codificador
     signal s2 std_logic_vector (0 to 3)); --Salida del Registro A 
     signal s3 std_logic_vector(6 downto 0)); --Salida del Decodificador A
     signal s4 std_logic_vector ( downto 0); --Salida del Convertidor A
     signal s5 std_logic_vector; --Salida del Contador
     signal s6 bit; --salida del comparador 
     signal s7,s8 std_logic; --salida del sumador
     signal s9 std_logic_vector(0 to 7); --salida del registro B
     signal s10 std_logic_vector(6 downto 0); --salida del decodificador B
     signal s11 std_logic_vector(1 downto 0); --salidal del multiplexor
     signal s12 std_logic_vector(3 downto 0);
     
     begin
        codif1: codif port map(a, s1);
        regA: reg port map(s1,CLK,s2);
        decoA: deco port map(s2,s3);
        codeConverterA: convertidor port map(RA,RB,CARRY,X,S4);
        contador: contador port map(E, s5);
        comparador: Comparador port map(s4,s5,s6);
        sumador: sumador port map(s5,s9,s7,28);
        registroB: regB (s7,s8, s9);
        decodificadorB: decoB port map(s9, s10);
        multiplexor: mux port map(s9, s, s11);
        demultiplexor: demux port map(s11, s, s12);

end funcional;