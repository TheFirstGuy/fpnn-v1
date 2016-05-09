----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/22/2016 12:04:27 AM
-- Design Name: 
-- Module Name: acc_f - Behavioral
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

entity acc_f is
    Port ( clk : in std_logic;
           rst0 : in std_logic;
           rst1 : in std_logic;
           f_in : in std_logic_vector(19 downto 0);
           en : in std_logic;
           init0 : in std_logic_vector(19 downto 0);
           init1 : in std_logic_vector(19 downto 0);
           f_out : out std_logic_vector(19 downto 0));
end acc_f;

architecture Behavioral of acc_f is
    signal cnt: std_logic_vector(19 downto 0);
	 signal control_sig: std_logic_vector(2 downto 0);
begin
control_sig<=rst0 & rst1 & en;
    add: process(clk, rst0, rst1, f_in, en)
			begin
			if rising_edge(clk) then
				case control_sig is
					when "000"=> cnt<=cnt;
					when "001"=> cnt<=cnt+f_in;
					when "010" =>cnt<= init1;
					when "100" => cnt<=init0;
					when others => cnt<=cnt;
				end case;		
			end if;	
    end process add;

--    add: process(clk, rst0, rst1, f_in, en)
--    begin
--        if (rst0 = '1') then --Reset to init0
--                cnt <= init0;
--        if (clk'event and clk =  '1') then	--Enable on Clock Tick
--                cnt <= init1;
--            if(en = '1') then
--					  cnt <= cnt + f_in;	--Sum of Counter Value and Input 
--				else
--						cnt<=cnt;
--            end if; 
--        end if; 
--    end process add;
    f_out <= cnt;   --Output of Current Counter Value

end Behavioral;
