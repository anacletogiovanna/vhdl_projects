--Library
library IEEE;
use IEEE.std_logic_1164.all;

-- Instance Entity 
entity Gate_AND is 
port(
	InputAND1 : in std_logic;
    InputAND2 : in std_logic;
    OutAND: out std_logic);
end Gate_AND;

-- Declare Archtecture
architecture rtl_Gate_AND of Gate_AND is 
begin 
	process(InputAND1, InputAND2) is --verify the signal of the InputNOT1 always
    	begin
        	OutAND <= InputAND1 and InputAND2;
    end process;
end rtl_Gate_AND;
