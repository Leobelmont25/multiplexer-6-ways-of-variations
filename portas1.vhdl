-- MULTIPLEXADOR --
-- Autor: Leonardo Guimarães Braga --
-- Estrutura: PORTAS LOGICAS -- 
-- TABELA DA VERDADE -- 
-- 0 0 | A0 -- 
-- 0 1 | A1 --
-- 1 0 | A2 -- 
-- 1 1 | A3 -- 
library IEEE;
use IEEE.std_logic_1164.all;

entity mux1 is port 
(
	s0, s1 : in bit;
	a0, a1, a2, a3 : in bit;
	Sout : out bit
);
end mux1;

architecture hardware of mux1 is
	signal i0, i1, i2, i3 : bit;
begin
	Sout <= i0 or i1 or i2 or i3;
	i0 <= a0 and not s1 and not s0;
	i1 <= a1 and not s1 and s0;
	i2 <= a2 and s1 and not s0;
	i3 <= a3 and s1 and s0;
end hardware;
