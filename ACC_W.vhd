----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:23:20 03/04/2016 
-- Design Name: 
-- Module Name:    ACC_W - Behavioral 
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

entity ACC_W is
PORT(
--Control signals
clk: IN STD_LOGIC;
--rand_w: IN STD_LOGIC; -- random weight initialization signal  
write_w: IN STD_LOGIC; -- enable controlled by rand or update signal

--Inputs
mult_in: IN STD_LOGIC_VECTOR( 19 DOWNTO 0 ); -- accumlated weight for learning

--Outputs
w_out: OUT STD_LOGIC_VECTOR( 19 DOWNTO 0 )); -- Output weight
end ACC_W;

architecture Behavioral of ACC_W is
SIGNAL weight_reg: STD_LOGIC_VECTOR( 19 DOWNTO 0 ):= X"004A4"; -- Stores the weight of link
	
begin

-- Update weight after back propagation is complete
PROCESS( clk, mult_in)
	BEGIN
	IF( clk'EVENT AND clk = '1') THEN
		IF( write_w = '1') THEN
			weight_reg <= weight_reg + mult_in;
		END IF;
	END IF;
END PROCESS;

w_out <= weight_reg; -- Output the weight 
end Behavioral;

