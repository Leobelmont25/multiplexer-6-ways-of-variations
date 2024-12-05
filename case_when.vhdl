-- MULTIPLEXADOR --
-- Autor: Leonardo Guimarães Braga --
-- Estrutura: CASE / WHEN -- 
-- Tabela da Verdade -- 
-- 0 0 | A0 --
-- 0 1 | A1 --
-- 1 0 | A2 --
-- 1 1 | A3 --
-------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
entity mux_4_12 is port
(
	a0, a1, a2, a3 : in bit;
	s0, s1 : in bit;
	Sout : out bit
);
end mux_4_12;
architecture hardware of mux_4_12 is
	signal s : bit_vector (1 downto 0);
begin 
	s <= s1 & s0;
	abc: process (a0, a1, a2, a3, s)
	begin 
		case s is
			when "00" => Sout <= a0;
			when "01" => Sout <= a1;
			when "10" => Sout <= a2;
			when others => Sout <= a3;
		end case;
	end process abc;
end hardware;
