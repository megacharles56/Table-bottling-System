library ieee;
use ieee.std_logic_1164.all;
use work.std_arith.all;
use ieee.std_logic_signed.all;

package paquete is

    component codif 
		port(
    		a: in integer range 0 to 9;
    		d: out std_logic_vector(3 downto 0));
	end component;

    component reg 
		port(
            D:   in std_logic_vector(0 to 7);
            CLK: in std_logic;
            Q:   out std_logic_vector(0 to 7));
    end component;

    component deco 
		port (
            A: in std_logic_vector(3 downto 0);
            d: out std_logic_vector(6 downto 0));
    end component;

    component convertidor 
		port(
            RA : in std_logic_vector(3 downto 0);
            RB : in std_logic_vector(3 downto 0);
            CARRY: in std_logic_vector(6 downto 0);
            X: in std_logic_vector(1 downto 0);
            CONV: out std_logic_vector(6 downto 0));
    end component; 

    component comp 
		port(
            a,b: in bit_vector(1 downto 0);
		    c: out bit);
    end component;

    component contador 
		port(
            E: inout std_logic;
            DI: inout std_logic_vector (0 to 7);
            PC: inout std_logic_vector (3 downto 0));
    end component;

    component sumador 
		port(
            A, B: in std_logic;
            Suma, Cout: out std_logic);
    end component;

    component regB 
		port(
            Db:   in std_logic_vector(0 to 7);
            CLKb: in std_logic;
            Qb:   out std_logic_vector(0 to 7));
    end component;

    component decoB 
		port(
            Ab: in std_logic_vector(3 downto 0);
            db: out std_logic_vector(6 downto 0));
    end component;
    
    component mux 
		port(
            a,b,c,d: in std_logic_vector(1 downto 0);
            s: in std_logic_vector(1 downto 0);
            z: out std_logic_vector(1 downto 0));
    end component;

    component demux
      port (
        z: in std_logic_vector(1 downto 0));	
        s: in std_logic_vector(1 downto 0);
        o: out std_logic_vector(3 downto 0);
    end component;

end paquete;
