-- MULTIPLEXADOR --
-- Autor: Leonardo Guimarães Braga --
-- Estrutura: IF / ELSE -- 
-- Tabela da Verdade -- 
-- 0 0 | A0 --
-- 0 1 | A1 --
-- 1 0 | A2 -- 
-- 1 1 | A3 --

library IEEE;
use IEEE.std_logic_1164.all;
entity mux_4_1 is port 
(
	a0, a1, a2, a3 : in bit;
	s0, s1 : in bit;
	Sout : out bit
);
end mux_4_1;
architecture hardware of mux_4_1 is
	signal s : bit_vector (1 downto 0);
begin
	s <= s1 & s0;
	abc: process(a0, a1, a2, a3, s)
	begin
		if s = "00" then Sout <= a0;
		elsif s = "01" then Sout <= a1;
		elsif s = "10" then Sout <= a2;
		else  Sout <= a3; 
		end if;
	end process;
end hardware;
