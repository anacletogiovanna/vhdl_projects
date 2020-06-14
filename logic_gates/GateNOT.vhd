--Library
library IEEE;
use IEEE.std_logic_1164.all;

-- Instance Entity 
entity Gate_NOT is 
port(
	InputNOT1 : in std_logic;
    OutNOT: out std_logic);
end Gate_NOT;

-- Declare Archtecture
architecture rtl_Gate_NOT of Gate_NOT is 
begin 
	process(InputNOT1) is --verify the signal of the InputNOT1 always
    	begin
        	OutNOT <= not InputNOT1;
    end process;
 end rtl_Gate_NOT;
