-- MULTIPLEXADOR -- 
-- Autor: Leonardo Guimarães Braga -- 
-- TESTBENCH -- 

library IEEE;
use IEEE.std_logic_1164.all;

entity mux_tbench is
end mux_tbench;

architecture hardware of mux_tbench is
	component mux1 port
(
	s0, s1: in bit;
	a0, a1, a2, a3 : in bit;
	Sout : out bit
); 
	end component;
	signal a0, a1, a2, a3, s0, s1, Sout : bit;
begin
	testeb : mux1 port map 
(
	a0 => a0,
	a1 => a1,
	a2 => a2,
	a3 => a3,
	s0 => s0,
	s1 => s1,
	Sout => Sout
);
	process
	begin 
		s0 <= 0;
		s1 <= 0;
		a0 <= 1;
		a1 <= 0;
		a2 <= 0;
		a3 <= 0;
		wait for 2 ns;
		s0 <= 0;
		s1 <= 1;
		a0 <= 0;
		a1 <= 1;
		a2 <= 0;
		a3 <= 0;
		wait for 2 ns;
		s0 <= 1;
		s1 <= 0;
		a0 <= 0;
		a1 <= 0;
		a2 <= 1;
		a3 <= 0;
		wait for 2 ns;
		s0 <= 1;
		s1 <= 1;
		a0 <= 0;
		a1 <= 0;
		a2 <= 0;
		a3 <= 1;
		wait for 2 ns;
		wait;
 
	end process;
end hardware; 
