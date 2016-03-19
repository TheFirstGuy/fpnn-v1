----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:31:54 03/18/2016 
-- Design Name: 
-- Module Name:    COEFFS - Behavioral 
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
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity COEFFS is
PORT(
--Inputs
degree: IN STD_LOGIC_VECTOR( 1 DOWNTO 0 );
address: IN STD_LOGIC_VECTOR( 19 DOWNTO 0 );
--Outputs
coeff: OUT STD_LOGIC_VECTOR( 19 DOWNTO 0 )
);
end COEFFS;

architecture Behavioral of COEFFS is
SIGNAL max: SIGNED( 19 DOWNTO 0 ) := "00011110101110011010";
SIGNAL min: SIGNED( 19 DOWNTO 0 ) := "11100001010001100110";
SIGNAL zero: SIGNED( 19 DOWNTO 0 ) := "00000000000000000000";
SIGNAL x_addr_0: BOOLEAN; -- x > 1.92033
SIGNAL x_addr_1: BOOLEAN; -- 0 < x <= 1.92033
SIGNAL x_addr_2: BOOLEAN; -- -1.92033 < x <= 0
SIGNAL x_addr_3: BOOLEAN; -- x < -1.92033

TYPE rom IS ARRAY (0 TO 2) OF STD_LOGIC_VECTOR(19 DOWNTO 0);
--Initialize constant arrays
-- 0.2603607177734375x^2 -0.999969482421875x + 0
CONSTANT neg: rom:=rom'(X"00000", "11110000000000000001","00000100001010100111");
-- -0.2603607177734375x^2 +0.999969482421875x + 0
CONSTANT pos: rom:=rom'(X"00000", "00001111111111111110","11111011110101011001");
-- 0.9601593017578125
CONSTANT mpos: rom:=rom'( "00001111010111001101", X"00000", X"00000");
-- -0.9601593017578125
CONSTANT npos: rom:=rom'( "11110000101000110011", X"00000", X"00000");
begin

x_addr_0 <= SIGNED(address) > max;
x_addr_1 <= SIGNED(address) > zero;
x_addr_2 <= SIGNED(address) > min;
x_addr_3 <= SIGNED(address) < min;

--Select constant
PROCESS( x_addr_0, x_addr_1, x_addr_2, x_addr_3, degree )
BEGIN
--x > 1.920318603515625
IF( x_addr_0 ) THEN 
	coeff <= mpos(CONV_INTEGER(degree));
-- 0 < x <= 1.920318603515625
ELSIF( x_addr_1 AND NOT x_addr_0) THEN
	coeff <= pos(CONV_INTEGER(degree));
-- -1.920318603515625 < x < 0
ELSIF( x_addr_2 AND NOT x_addr_3) THEN
	coeff <= neg(CONV_INTEGER(degree));
-- x < -1.920318603515625
ELSIF( x_addr_3 ) THEN
	coeff <= npos(CONV_INTEGER(degree));
ELSE
	coeff <= mpos(CONV_INTEGER(degree));
END IF;
END PROCESS;

end Behavioral;

