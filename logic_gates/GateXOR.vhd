--Library
library IEEE;
use IEEE.std_logic_1164.all;

-- Instance Entity 
entity Gate_XOR is 
port(
	InputXOR1 : in std_logic;
    InputXOR2 : in std_logic;
    OutXOR: out std_logic);
end Gate_XOR;

-- Declare Archtecture
architecture rtl_Gate_XOR of Gate_XOR is 
begin 
	process(InputXOR1, InputXOR2) is --verify the signal of the InputNOT1 always
    	begin
        	OutXOR <= InputXOR1 XOR InputXOR2;
    end process;
end rtl_Gate_XOR;
