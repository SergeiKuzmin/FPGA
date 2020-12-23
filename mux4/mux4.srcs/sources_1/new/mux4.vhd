----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.10.2020 20:39:33
-- Design Name: 
-- Module Name: mux4 - struct
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

entity mux4 is
Port (d0, d1, d2, d3: in std_logic;
      s: in std_logic_vector(1 downto 0);
      y: out std_logic);
end mux4;

architecture struct of mux4 is
component mux2
Port(d0, d1: in std_logic;
s: in std_logic;
y: out std_logic);
end component;
signal low, high: std_logic;
begin
lowmux: mux2 port map(d0, d1, s(0), low);
highmux: mux2 port map(d2, d3, s(0), high);
finalmux: mux2 port map(low, high, s(1), y);
end struct;
