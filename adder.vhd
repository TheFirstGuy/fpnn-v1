----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/21/2016 11:33:41 PM
-- Design Name: 
-- Module Name: adder - Behavioral
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
use IEEE.STD_LOGIC_SIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity adder is
    Port ( clk : in std_logic;
           rst : in std_logic;
           en : in std_logic;
           a : in std_logic_vector(19 downto 0);
           b : in std_logic_vector(19 downto 0);
           c : out std_logic_vector(19 downto 0));
end adder;

architecture Behavioral of adder is
    signal sum: std_logic_vector(19 downto 0);	--Counter Register to Store Results
begin
    add: process(clk, rst, a, b, en)
    begin
        if (clk'event and clk =  '1') then	--Enable on Clock Tick
            if (rst = '1') then	--Reset
                sum <= (others => '0');	--Reset Counter Register
            else
                if (en = '1') then
                    sum <= a + b;	--Sum of Counter Value and Input 
                else
                    sum <= sum;
                end if;
            end if; 
        end if; 
    end process add;
    c <= sum;

end Behavioral;
