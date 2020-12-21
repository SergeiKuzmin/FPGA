----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.12.2020 02:33:31
-- Design Name: 
-- Module Name: test_vivado - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
 
entity decoder4 is
	port(
		s: in  std_logic_vector(1 downto 0);
		x: out std_logic_vector(3 downto 0)
	);
end decoder4;
 
architecture cond_arch of decoder4 is
begin
	x <= 	"0001" when (s = "00") else
		"0010" when (s = "01") else
		"0100" when (s = "10") else
		"1000";
end cond_arch;

