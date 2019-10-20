-------------------------------------------------------------------------
-- Eric Marcanio
-------------------------------------------------------------------------
-- DESCRIPTION: This file contains an N bit one's complementer  

-- NOTES:
-------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

entity Onescomp2 is 
	generic(N : integer := 32);	--Used to simulate a number, N
	port(	in_1 : in 	std_logic_vector(N-1 downto 0);
		out_1: out	std_logic_vector(N-1 downto 0));
	
end Onescomp2;

architecture dataflow of Onescomp2 is

begin

 G1: for i in 0 to N-1 generate
	 out_1(i)  <= not(in_1(i));
end generate;



end dataflow;