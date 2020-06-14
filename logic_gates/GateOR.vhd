--Library
library IEEE;
use IEEE.std_logic_1164.all;

-- Instance Entity 
entity Gate_OR is 
port(
	InputOR1 : in std_logic;
    InputOR2 : in std_logic;
    OutOR: out std_logic);
end Gate_OR;

-- Declare Archtecture
architecture rtl_Gate_OR of Gate_OR is 
begin 
	process(InputOR1, InputOR2) is --verify the signal of the InputNOT1 always
    	begin
        	OutOR <= InputOR1 or InputOR2;
    end process;
end rtl_Gate_OR;
