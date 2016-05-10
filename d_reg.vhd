----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:21:12 05/10/2016 
-- Design Name: 
-- Module Name:    d_reg - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity d_reg is
  PORT (
    clk : IN STD_LOGIC;
    input : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	 en : IN STD_LOGIC;
    clr : IN STD_LOGIC;
    output : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
  );
end d_reg;

architecture Behavioral of d_reg is

--signal d :STD_LOGIC_VECTOR (3 downto 0);

begin
process(clk, clr, en) begin
	if(clr = '1')then
		output<="0000";
	elsif(clk'EVENT AND clk = '1')then
		if(en='1') then
			output<=input;
		end if;
	end if;
end process;	
end Behavioral;

