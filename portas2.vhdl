-- MULTIPLEXADOR --
-- Autor: Leonardo Guimarães Braga --
-- Estrutura: PORTAS LOGICAS -- 
-- TABELA DA VERDADE -- 
-- 0 0 | A0 -- 
-- 0 1 | A1 -- 
-- 1 0 | A2 -- 
-- 1 1 | A3 --
----------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

entity muxp1 is port 
(
	s0, s1 : in bit;
	a0, a1, a2, a3 : in bit;
	Sout : out bit
);
end muxp1;
architecture hardware of muxp1 is
begin 
	Sout <= (a0 and not s1 and not s0) or
		(a1 and not s1 and s0) or
		(a2 and s1 and not s0) or
		(a3 and s1 and s0 );
end hardware;  
