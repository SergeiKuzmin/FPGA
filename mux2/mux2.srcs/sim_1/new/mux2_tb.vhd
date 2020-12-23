----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.12.2020 01:40:34
-- Design Name: 
-- Module Name: mux2_tb - Behavioral
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

entity mux2_tb is
--Port( );
end mux2_tb;

architecture Behavioral of mux2_tb is
    component mux2
        port (
              a, b: in std_logic;
              s: in std_logic;
              x: out std_logic
              );
    end component;
    
    signal signal_ab: std_logic_vector(1 downto 0);
    signal signal_s: std_logic;
    signal signal_x: std_logic;

begin
UUT: mux2 port map (a => signal_ab(1), b => signal_ab(0), 
                    s => signal_s, x => signal_x);
   process
   begin
       signal_ab <= "00";
       signal_s <= '0';
       wait for 100 ns;
       signal_ab <= "01";
       signal_s <= '0';
       wait for 100 ns;
       signal_ab <= "10";
       signal_s <= '0';
       wait for 100 ns;
       signal_ab <= "11";
       signal_s <= '0';
       wait for 100 ns;
       signal_ab <= "00";
       signal_s <= '1';
       wait for 100 ns;
       signal_ab <= "01";
       signal_s <= '1';
       wait for 100 ns;
       signal_ab <= "10";
       signal_s <= '1';
       wait for 100 ns;
       signal_ab <= "11";
       signal_s <= '1';
       wait for 100 ns;
   end process;

end Behavioral;
