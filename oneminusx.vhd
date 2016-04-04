----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:15:35 03/21/2016 
-- Design Name: 
-- Module Name:    oneminusx - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
USE IEEE.STD_LOGIC_SIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity oneminusx is
PORT  (
Input : IN  STD_LOGIC_VECTOR(19 DOWNTO 0):=x"00000";
Output : OUT STD_LOGIC_VECTOR(19 DOWNTO 0)
);
end oneminusx;

architecture Behavioral of oneminusx is

begin
Output<=x"10000"-Input;

end Behavioral;

