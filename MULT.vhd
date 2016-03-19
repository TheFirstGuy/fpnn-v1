----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:52:00 03/04/2016 
-- Design Name: 
-- Module Name:    MULT - Behavioral 
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

entity MULT is
PORT  (
			reset : IN  STD_LOGIC;
			clock : IN  STD_LOGIC;
				en : IN  STD_LOGIC;
         Input : IN  STD_LOGIC_VECTOR(19 DOWNTO 0):=x"00000";
			    W : IN  STD_LOGIC_VECTOR(19 DOWNTO 0):=x"00000";
        Output : OUT STD_LOGIC_VECTOR(19 DOWNTO 0);
		  ready  : OUT STD_LOGIC:='0'
		  );
end MULT;

architecture Behavioral of MULT is
component fixedpointmult
 port (
 A   : IN std_logic_VECTOR(19 downto 0);
 B   : IN std_logic_VECTOR(19 downto 0);
 clk : IN std_logic;
 CE  : IN std_logic;
 SCLR: IN std_logic;
 P   : OUT std_logic_VECTOR(39 downto 0)
 );
end component; signal A   :  std_logic_VECTOR(19 downto 0);
 signal B   :  std_logic_VECTOR(19 downto 0);
 signal clk :  std_logic;
 signal CE  :  std_logic;
 signal SCLR:  std_logic;
 signal P   :  std_logic_VECTOR(39 downto 0);
begin
U1: fixedpointmult PORT MAP(
A=>A, B=>B, clk=>clk, CE=>CE, SCLR=>SCLR, P=>P);
A <= Input;
B <= W;
CE <= en;
clk <= clock;
SCLR <= reset;
Output <= P(29 downto 10);
Process (en, clk)
begin
if(clk'EVENT AND clk='1') THEN
	if (en = '1') THEN
		ready <= '1';
	else
		ready <= '0';
		end if;
	end if;
end Process;
end Behavioral;

