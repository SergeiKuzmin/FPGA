library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity test_tb is
-- Port ( );
end test_tb;

architecture Behavioral of test_tb is
    component decoder4
        port (s: in std_logic_vector(1 downto 0);
              x: out std_logic_vector(3 downto 0)
              );
    end component;
    
    signal signal_s: std_logic_vector (1 downto 0);
    signal signal_x: std_logic_vector (3 downto 0);
    
begin
UUT: decoder4 port map (s => signal_s, x => signal_x);
   process
   begin
       signal_s <= "00";
       wait for 100 ns;
       signal_s <= "01";
       wait for 100 ns;
       signal_s <= "10";
       wait for 100 ns;
       signal_s <= "11";
       wait for 100 ns;
   end process;

end Behavioral;
