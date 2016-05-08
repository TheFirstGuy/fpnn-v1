----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:34:10 03/18/2016 
-- Design Name: 
-- Module Name:    CNT - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CNT is
PORT(
--Inputs
clk: IN STD_LOGIC;
enable: IN STD_LOGIC;
reset: IN STD_LOGIC;

--Outputs
fin: OUT STD_LOGIC;
degree: OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
);
end CNT;

architecture Behavioral of CNT is
SIGNAL cnt: UNSIGNED(1 DOWNTO 0) := "10";
SIGNAL f: STD_LOGIC;

begin

-- Simple counter. Counts from second degree down to degree 0
PROCESS( clk, enable, reset )
	BEGIN
	IF( reset = '1') THEN
		cnt <= "10";
		f <= '0';
	ELSE
		IF( clk'EVENT AND clk = '1' )THEN
			IF( enable = '1') THEN
				IF( cnt = "00") THEN -- Reset count after last degree
					cnt <= "10";
					--fin <= '1';
				ELSE
					cnt <= cnt - 1;
					--fin <= '0';
				END IF;
				IF( cnt = "01") THEN-- This might need to be changed to when cnt = "00"
					f <= '1';
				ELSE
					f <= '0';
				END IF;
			ELSE
				cnt <= cnt;
				f <= f;
			END IF;
		END IF;
	END IF;
END PROCESS;
fin <= f;
degree <= STD_LOGIC_VECTOR(cnt);

end Behavioral;

