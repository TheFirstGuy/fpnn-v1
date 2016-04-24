----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:03:36 04/18/2016 
-- Design Name: 
-- Module Name:    inputLink - Behavioral 
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

entity inputLink is
PORT(
	--Data
	y: OUT STD_LOGIC_VECTOR(19 DOWNTO 0);
	fwd_succ: OUT STD_LOGIC;
	-- UART IN
	uart_in: IN STD_LOGIC_VECTOR(19 DOWNTO 0); 
	-- Control Signal
	fwd_pred: IN STD_LOGIC --Forward request signal
	
);
end inputLink;

architecture Behavioral of inputLink is
begin
y <= uart_in;
fwd_succ<=fwd_pred;


end Behavioral;

