--Multiplexador--
-- Autor: Leonardo Guimarães Braga --
-- Estrutura: WITH SELECT --
-- TABELA DA VERDADE --
-- 0 0 | A0 --
-- 0 1 | A1 --
-- 1 0 | A2 --
-- 1 1 | A3 --
---------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

entity mux_4_to_1 is port 
(
	s0, s1 : in bit;
	a0, a1, a2, a3 : in bit;
	Sout : out bit
);
end mux_4_to_1;

architecture hardware of mux_4_to_1 is
signal s : bit_vector (1 downto 0);
begin 
	s <= s1 & s0;
	with s select 
		Sout <= a0 when "00",
			a1 when "01",
			a2 when "10",
			a3 when "11",
			'0' when others;
end hardware;
