----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.12.2020 23:10:56
-- Design Name: 
-- Module Name: repeater - Behavioral
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

entity repeater is 
    port(
		x: in std_logic;
		clk: in std_logic;
		y: out std_logic;
		x_new: out std_logic
	);
end repeater;

architecture Behavioral of repeater is
constant H: integer := 3;
signal buf: std_logic_vector((H - 1) downto 0) := (others => '0');
signal flag: std_logic := '1';
begin
    process(clk, x)
    begin
    if flag = '1' then
            y <= '0';
            flag <= '0';
    end if;
    if rising_edge(clk) then
        y <= buf(0);
        buf <= buf(H - 1) & buf((H - 1) downto 1);
        buf(H - 1) <= x;
    end if;
    x_new <= x;
    end process;
end Behavioral;
