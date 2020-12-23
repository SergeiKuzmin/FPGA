----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.12.2020 01:02:57
-- Design Name: 
-- Module Name: decoder4 - Behavioral
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


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity decoder4 is
	port(
		s: in  std_logic_vector(1 downto 0);
		x: out std_logic_vector(3 downto 0)
	);
end decoder4;

architecture Behavioral of decoder4 is
begin
    process(s)
    begin
    case s is
        when "00" =>
            x <= "0001";
        when "01" =>
            x <= "0010";
        when "10" =>
            x <= "0100";
        when others =>
            x <= "1000";
    end case;
	end process;
end Behavioral;
