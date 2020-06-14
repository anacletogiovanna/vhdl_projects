library IEEE;
use IEEE.std_logic_1164.all;

entity testbench is
-- empty because the entity was created in an external file
end testbench;

--create archtecture
architecture tb of testbench is 

--create the component OR
component Gate_OR is -- call external component 
port(
	InputOR1 : in std_logic;
    InputOR2 : in std_logic;
    OutOr : out std_logic);
end component;

--create the signals that will be connected in the component 
signal InputOR1_in, InputOR2_in, OutOR_out : std_logic;

begin
	--connect the signals in or component
	DUT: Gate_OR port map (InputOR1_in, InputOR2_in, OutOR_out);
    
    process
    begin 
    	InputOR1_in <= '0';
        InputOR2_in <= '0';
        wait for 1 ns;
    	
        InputOR1_in <= '0';
        InputOR2_in <= '1';
        wait for 1 ns;
        
        InputOR1_in <= '1';
        InputOR2_in <= '0';
        wait for 1 ns;
        
        InputOR1_in <= '1';
        InputOR2_in <= '1';
        wait for 1 ns;
        
        InputOR1_in <= '0';
        InputOR2_in <= '0';
        
        wait;
     end process;
end tb;


