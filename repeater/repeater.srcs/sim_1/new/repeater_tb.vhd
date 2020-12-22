----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.12.2020 23:13:59
-- Design Name: 
-- Module Name: repeater_tb - Behavioral
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

entity repeater_tb is
--  Port ( );
end repeater_tb;


architecture Behavioral of repeater_tb is
    component repeater
        port(
		x: in std_logic;
		clk: in std_logic;
		y: out std_logic;
		x_new: out std_logic
	);
    end component;
    
    constant T: time := 50 ns;
    signal signal_x: std_logic;
    signal signal_clk: std_logic;
    signal signal_y: std_logic;
    signal signal_x_new: std_logic;
    
begin
UUT: repeater port map (x => signal_x, clk => signal_clk,
                      y => signal_y, x_new => signal_x_new);
   process
   begin
       signal_clk <= '0';
       signal_x <= '0';
       wait for T/2;
       signal_clk <= '1';
       signal_x <= '1';
       wait for T/2;
       signal_clk <= '0';
       signal_x <= '1';
       wait for T/2;
       signal_clk <= '1';
       signal_x <= '0';
       wait for T/2;
       signal_clk <= '0';
       signal_x <= '0';
       wait for T/2;
       signal_clk <= '1';
       signal_x <= '1';
       wait for T/2;
       signal_clk <= '0';
       signal_x <= '1';
       wait for T/2;
       signal_clk <= '1';
       signal_x <= '1';
       wait for T/2;
       signal_clk <= '0';
       signal_x <= '1';
       wait for T/2;
       signal_clk <= '1';
       signal_x <= '1';
       wait for T/2;
       signal_clk <= '0';
       signal_x <= '1';
       wait for T/2;
       signal_clk <= '1';
       signal_x <= '0';
       wait for T/2;
       signal_clk <= '0';
       signal_x <= '0';
       wait for T/2;
       signal_clk <= '1';
       signal_x <= '0';
       wait for T/2;
       signal_clk <= '0';
       signal_x <= '0';
       wait for T/2;
       signal_clk <= '1';
       signal_x <= '1';
       wait for T/2;
       signal_clk <= '0';
       signal_x <= '1';
       wait for T/2;
       signal_clk <= '1';
       signal_x <= '1';
       wait for T/2;
       signal_clk <= '0';
       signal_x <= '1';
       wait for T/2;
       signal_clk <= '1';
       signal_x <= '0';
       wait for T/2;
       signal_clk <= '0';
       signal_x <= '0';
       wait for T/2;
       signal_clk <= '1';
       signal_x <= '1';
       wait for T/2;
       signal_clk <= '0';
       signal_x <= '1';
       wait for T/2;
       signal_clk <= '1';
       signal_x <= '0';
       wait for T/2;
       signal_clk <= '0';
       signal_x <= '0';
       wait for T/2;
       signal_clk <= '1';
       signal_x <= '1';
       wait for T/2;
       signal_clk <= '0';
       signal_x <= '1';
       wait for T/2;
       signal_clk <= '1';
       signal_x <= '1';
       wait for T/2;
       signal_clk <= '0';
       signal_x <= '1';
       wait for T/2;
       signal_clk <= '1';
       signal_x <= '0';
       wait for T/2;
       signal_clk <= '0';
       signal_x <= '0';
       wait for T/2;
       signal_clk <= '1';
       signal_x <= '1';
       wait for T/2;
       signal_clk <= '0';
       signal_x <= '1';
       wait for T/2;
       signal_clk <= '1';
       signal_x <= '0';
       wait for T/2;
       signal_clk <= '0';
       signal_x <= '0';
       wait for T/2;
       signal_clk <= '1';
       signal_x <= '1';
       wait for T/2;
       signal_clk <= '0';
       signal_x <= '1';
       wait for T/2;
       signal_clk <= '1';
       signal_x <= '1';
       wait for T/2;
       signal_clk <= '0';
       signal_x <= '1';
       wait for T/2;
       signal_clk <= '1';
       signal_x <= '0';
   end process;

end Behavioral;
