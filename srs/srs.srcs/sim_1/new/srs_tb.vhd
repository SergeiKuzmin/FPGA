----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.12.2020 00:21:08
-- Design Name: 
-- Module Name: srs_tb - Behavioral
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
    component srs
        port (r, s, c: in std_logic;
              q: inout std_logic);
    end component;
    
    constant T: time := 100 ns;
    signal rsc : std_logic_vector(2 downto 0);
    signal signal_q : std_logic;

begin
    UUI: srs port map (r => rsc(2), s => rsc(1), c => rsc(0), q => signal_q);
    
    process
    begin
        rsc <= "000";
        wait for T;
        rsc <= "001";
        wait for T;
        rsc <= "010";
        wait for T;
        rsc <= "011";
        wait for T;
        rsc <= "100";
        wait for T;
        rsc <= "101";
        wait for T;
        rsc <= "110";
        wait for T;
        rsc <= "111";
    end process;
         

end Behavioral;
