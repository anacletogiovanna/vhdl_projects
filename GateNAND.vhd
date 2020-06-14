--Library
library IEEE;
use IEEE.std_logic_1164.all;

-- Instance Entity 
entity Gate_NAND is 
port(
	InputNAND1 : in std_logic;
    InputNAND2 : in std_logic;
    OutNAND: out std_logic);
end Gate_NAND;

-- Declare Archtecture
architecture rtl_Gate_NAND of Gate_NAND is 
begin 
	process(InputNAND1, InputNAND2) is --verify the signal of the InputNOT1 always
    	begin
        	OutNAND <= InputNAND1 nand InputNAND2;
    end process;
end rtl_Gate_NAND;
