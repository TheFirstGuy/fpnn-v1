----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:14:14 03/07/2016 
-- Design Name: 
-- Module Name:    acc_b - Behavioral 
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
use IEEE.STD_LOGIC_SIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity acc_b is
port (
	clk: in std_logic;	--Clock Input
	rst: in std_logic;	--Reset Input
	b_in: in std_logic_vector(31 downto 0);	--Accumulator Input
	b_en: in std_logic;	--Accumulator Enable
	b_out: out std_logic_vector(31 downto 0));	--Accumulator Output
end acc_b;

architecture Behavioral of acc_b is
	signal cnt: std_logic_vector(31 downto 0);	--Counter Register to Store Results
begin
	add: process(clk, rst, b_in)
	begin
		if (clk'event and clk =  '1') then	--Enable on Clock Tick
			if (rst = '1') then	--Reset
				cnt <= (others => '0');	--Reset Counter Register
			else
				if (b_en = '1') then	--Accumulator Input Enable
					cnt <= cnt + b_in;	--Sum of Counter Value and Input
				end if;
			end if;
		end if;
	end process add;
	b_out <= cnt;	--Output Current Counter Value
end Behavioral;

