----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.12.2020 00:20:03
-- Design Name: 
-- Module Name: srs - Behavioral
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

entity srs is
Port (r: in std_logic;
      s: in std_logic;
      c: in std_logic;
      q: inout std_logic := '0');
end srs;

architecture Behavioral of srs is
begin
    process(r, s, c)
    variable x: std_logic;
    begin
    if (rising_edge(c)) then
        if r = '1' then
            q <= '0';
        elsif s = '1' then
            q <= '1';
        else
            q <= q;
        end if;
    else
        q <= q;
    end if;
    end process;
end Behavioral;
