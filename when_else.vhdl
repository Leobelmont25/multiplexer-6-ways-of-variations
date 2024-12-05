-- MULTIPLEXADOR --
-- Autor: Leonardo Guimarães Braga --
-- EStrutura: WHEN / ELSE --
-- Tabela da Verdade -- 
-- 0 0 | A0 --
-- 0 1 | A1 --
-- 1 0 | A2 --
-- 1 1 | A3 --
----------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
entity mux_4_to_1_1 is port 
(
	a0, a1, a2, a3 : in bit;
	s0, s1 : in bit;
	Sout : out bit
);
end mux_4_to_1_1;
architecture hardware of mux_4_to_1_1 is
	signal s : bit_vector (1 downto 0); 
begin 
	s <= s1 & s0;
	Sout <= a0 when s1 = '0' and s0 = '0' else
		a1 when s1 = '0' and s0 = '1' else
		a2 when s1 = '1' and s0 = '0' else
		a3;
end hardware;
