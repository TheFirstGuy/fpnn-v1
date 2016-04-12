----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:47:06 04/10/2016 
-- Design Name: 
-- Module Name:    neuron - Behavioral 
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

entity neuron is
PORT(
	--Control
	clk: IN STD_LOGIC;
	north_backward, east_backward, west_backward, south_backward: IN STD_LOGIC;
	north_forward, east_forward, west_forward, south_forward: IN STD_LOGIC;
	broadcast: IN STD_LOGIC;
	--Data input
	north_out, east_out, south_out, west_out: OUT STD_LOGIC_VECTOR(19 DOWNTO 0);
	north_in, east_in, south_in, west_in: IN STD_LOGIC_VECTOR(19 DOWNTO 0)
);
end neuron;

architecture Behavioral of neuron is

begin


end Behavioral;

