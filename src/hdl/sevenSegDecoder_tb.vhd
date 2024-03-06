----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/29/2024 04:39:09 PM
-- Design Name: 
-- Module Name: SevenSegmentDisplayDecoder - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.

entity SevenSegmentDisplayDecoder_tb is
--  Port ( )

end SevenSegmentDisplayDecoder_tb;


architecture Behavioral of SevenSegmentDisplayDecoder_tb is
    -- intermediate signals with initial value
    component SevenSegmentDisplayDecoder is
          port(
                 i_D : in std_logic_vector(3 downto 0);
                 o_S : out std_logic_vector(6 downto 0)
          );    
        end component SevenSegmentDisplayDecoder;
        
    signal w_seg: std_logic_vector(7 downto 0) := x"00";
    
    signal w_sw : std_logic_vector(3 downto 0) := x"0";
begin
SevenSegmentDisplayDecoder_uut: SevenSegmentDisplayDecoder
	port map(
i_D => w_sw,
o_S => w_seg(6 downto 0)
);

    test_process : process 
	begin
	
		w_sw <= x"0"; wait for 10 ns;
		  assert w_seg = x"40" report  "bad assert 1" severity error;
		
		   
		wait; -- wait forever
		
	end process;
   
end Behavioral;
