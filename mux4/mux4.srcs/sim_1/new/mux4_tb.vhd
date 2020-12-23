----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.10.2020 21:01:25
-- Design Name: 
-- Module Name: test - Behavioral
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

entity test is
--  Port ( );
end test;

architecture Behavioral of test is
component mux4
    Port (s: in std_logic_vector(1 downto 0);
          d0, d1, d2, d3: in std_logic;
          y: out std_logic);
end component;

signal entrance_s: std_logic_vector(1 downto 0);
signal entrance_d: std_logic_vector(3 downto 0);
signal y_out: std_logic;

begin
    UUI: mux4 port map (s => entrance_s, y => y_out, d0 => entrance_d(0), d1 => entrance_d(1), d2 => entrance_d(2),
    d3 => entrance_d(3));
    
    process
    begin
        entrance_d <= "0001";
        entrance_s <= "00";
        wait for 10 ns;
        entrance_s <= "01";
        wait for 10 ns;
        entrance_s <= "10";
        wait for 10 ns;
        entrance_s <= "11";
        wait for 10 ns;
        
        entrance_d <= "0010";
        entrance_s <= "00";
        wait for 10 ns;
        entrance_s <= "01";
        wait for 10 ns;
        entrance_s <= "10";
        wait for 10 ns;
        entrance_s <= "11";
        wait for 10 ns;
        
        entrance_d <= "0100";
        entrance_s <= "00";
        wait for 10 ns;
        entrance_s <= "01";
        wait for 10 ns;
        entrance_s <= "10";
        wait for 10 ns;
        entrance_s <= "11";
        wait for 10 ns;
        
        entrance_d <= "1000";
        entrance_s <= "00";
        wait for 10 ns;
        entrance_s <= "01";
        wait for 10 ns;
        entrance_s <= "10";
        wait for 10 ns;
        entrance_s <= "11";
        wait for 10 ns;
    end process;
        


end Behavioral;
