----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/24/2016 08:35:16 PM
-- Design Name: 
-- Module Name: err - Behavioral
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

entity err is
    Port ( clk : in std_logic;  --Clock
           rst : in std_logic;  --Reset
			  --broadcast : in std_logic; -- broadcast
			  rslt_valid : in std_logic; -- result ready
           rslt : in std_logic_vector(19 downto 0); --Calculated Result
           c_val : in std_logic_vector(19 downto 0);    --Classification Value
			  c_valid: in std_logic;
           err : out std_logic_vector(19 downto 0);    --Calculated Error
			  err_valid: out std_logic); -- error output valid
end err;

architecture Behavioral of err is
    signal err_val : std_logic_vector(19 downto 0);
	 signal expected_val : std_logic_vector(19 downto 0);
begin
    calc_err : process(clk, rst, rslt, c_val, rslt_valid, c_valid)
    begin
        if (clk'event and clk =  '1') then
            if (rst = '1') then
                err_val <= (others => '0');
					 err_valid <= '0';
					 expected_val<= X"00000";
				else
					--if( broadcast = '1' or rslt_valid = '1') then -- broadcast 
					--	 err_valid <= '1';
					--else
					--	 err_valid <= '0';
					--end if;
					if( rslt_valid = '1')then
						err_val <= expected_val - rslt;    --Calculate Error (Classification - Result)
						err_valid <= '1';
					elsif( c_valid = '1') then
						expected_val <= c_val;
					else
						err_val <= err_val;
						err_valid <= '0';
					end if;
            end if;
        end if;
    end process calc_err;
    
    err <= err_val; --Output Error
                
end Behavioral;
