library ieee;
use ieee.std_logic_1164.all;
use work.std_arith.all;

entity convertidor is port (
    RA : in std_logic_vector(3 downto 0);
    RB : in std_logic_vector(3 downto 0);
    CARRY: in std_logic_vector(6 downto 0);
    X: in std_logic_vector(1 downto 0);
    CONV: out std_logic_vector(6 downto 0));
end convertidor;

architecture Behavioral of convertidor is

    begin
        process (RA,RB,CARRY,X) begin
            variable z: std_logic := 0;
            CONV(O) <= RA(0) ;
            CONV(l) <= RA(1) xor RB(0);
            CARRY(0) <= RA(1) and RB(1);
            CONV(2) <= RA(2) xor RB(1) xor CARRY(0) ;
            CARRY(1)<= (RA(2) and RB(1)) or (CARRY(0) and (RA(2) xor
            RB(1))) ;
            X(0) <= RA(3) xor RB(0) xor CARRY(1) ;
            CARRY(2) <= (RA(3) and RB(0)) or (CARRY(1) and(RA(3)
            xor RB(01 ) ) ;
            CONV(3) <= X(0) xor RB(2);
            CARRY(3) <= X(0) and RB(2);
            X(l) <= CARRY(2) xor RB(1) xor CARRY(3);
            CARRY(4) <= (CARRY(2) and RB(l))or (CARRY(3) and (CARRY(2)
            xor RB(1) ) ) ;
            CONV(4) <= X(l) xor RB(3) ;
            CARRY(5)<= X(l)and RB(3);
            CONV(5) <= CARRY(4) xor RB(1) xor CARRY(5);
            CARRY(6)<= (CARRY(4) andRB(l)) or(CARRY(5) and (CARRY(4)
            xor RB(1))) ;
            CONV(6) <= ( z xor RB(3) xor CARRY(6) ) ;
        end process;
end Behavioral;