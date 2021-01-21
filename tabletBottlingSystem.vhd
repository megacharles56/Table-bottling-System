library ieee;
use ieee.std_logic_1164.all;
use work.std_arith.all;

package tabletBottlingSystem is

    component codif is
        port (
            a: in integer range 0 to 9;
            d: out std_logic_vector(3 downto 0));
    end component;

    component reg is
        port (
            D:   in std_logic_vector(0 to 7);
            CLK: in std_logic;
            Q:   out std_logic_vector(0 to 7));
    end component;

    component deco is
        port (
            A: in std_logic_vector(3 downto 0);
            d: out std_logic_vector(6 downto 0));
    end component;

    component convertidor is
        port (
            RA : in std_logic_vector(3 downto 0);
            RB : in std_logic_vector(3 downto 0);
            CARRY: in std_logic_vector(6 downto 0);
            X: in std_logic_vector(1 downto 0);
            CONV: out std_logic_vector(6 downto 0));
    end component; 

    component comp is
        port (
            a,b: in bit_vector(1 downto 0);
		    c: out bit);
    end component;

    component contador is
        port(
            E: inout std_logic;
            DI: inout std_logic_vector (0 to 7);
            PC: inout std_logic_vector (3 downto 0));
    end component;

    component sumador is
        port(
            A, B: in std_logic;
            Suma, Cout: out std_logic);
    end component;

    component regB is
    end component;

    component decoB is
    end component;
    
    component mux is
        port (
            a,b,c,d: in std_logic_vector(1 downto 0);
            s: in std_logic_vector(1 downto 0);
            z: out std_logic_vector(1 downto 0));
    end component;

end tabletBottlingSystem;
