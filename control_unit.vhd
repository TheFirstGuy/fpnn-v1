----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/25/2016 04:35:01 PM
-- Design Name: 
-- Module Name: control_unit - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity control_unit is
    Port ( clk : in std_logic;  --Clock
           rst : in std_logic;  --Reset
           f_init : in std_logic;   --Forward Initialize
           f_val : in std_logic;    --Forward Valid
           b_val : in std_logic;    --Backward Valid
           io_val : in std_logic;   --I/O Ready
           bcast_en : out std_logic;    --Broadcast Enable
           io_rdy : out std_logic;  --I/O Ready
			  still_fwd: out STD_LOGIC;  
           f_en : out std_logic;    --Forward Enable
           b_en : out std_logic;   --Backward Enable
			  u_en : out std_logic); --Update enable
end control_unit;

architecture Behavioral of control_unit is
    type  StateType is (ST_RST,ST_BCAST,ST_IO,ST_F,ST_B,ST_U, ST_U2, ST_FF);   --States
    signal state : StateType;
    signal bcast : std_logic;   --Broadcast Enable Signal
    signal cnt : std_logic_vector(3 downto 0);  --Counter
    signal f : std_logic;   --Forward Enable Signal
    signal b : std_logic;   --Backward Enable Signal
	 signal u : std_logic;  -- update enable signal
    signal io : std_logic;  --I/O Ready Signal
	 signal sf : std_logic; -- still fwd signal
begin
    st: process(rst, clk, state) begin
        if (rst = '1') then --Reset State
            state <= ST_RST;
            bcast <= '0';
            io <= '0';
            f <= '0';
            b <= '0';
				u <= '0';
				cnt <= "0000";
				sf <= '0';
        elsif (clk'event and clk = '1') then
            case state is
					 when ST_RST => state <= ST_BCAST;
                when ST_BCAST =>    --Broadcast State
                    if (cnt = "1000") then  --Enable for 8 clock cycles (2x Port Verify)
                        state <= ST_IO;     --Switch to I/O Ready State
                    else
                        bcast <= '1';
                        cnt <= cnt + 1;
								io <= '0';
								f <= '0';
								b <= '0';
								u <= '0';
                    end if;
                when ST_IO =>   --I/O Ready
					if (f_init = '0' AND io_val = '1') then --Verify I/O Ready
					   io <= io_val;
					   state <= ST_F;  --Switch to Forward State when Ready
						bcast <= '0';
						f <= '0';
						b <= '0';
						u <= '0';
						cnt <= "0000";
						sf <= '0';
					elsif( f_init = '1' and f_val = '1') then
						io <= io_val;
					   state <= ST_FF;  
						bcast <= '0';
						f <= '0';
						b <= '0';
						u <= '0';
						cnt <= "0000";
						sf <= '0';
					else 
						bcast <= '0';
						f <= '0';
						b <= '0';
						u <= '0';
						cnt <= "0000";
						sf <= '0';
					end if;
					 when ST_FF =>
						if(f_val = '0') then
							f <= '1';   --Forward Enable
							bcast <= '0';
							io <= '0';
							b <= '0';
							u <= '0';
							cnt <= "0000";
							sf <= '1';
						else
							state <= ST_IO;
							bcast <= '0';
							io <= '0';
							b <= '0';
							u <= '0';
							cnt <= "0000";
							sf <= '1';
						end if;
                when ST_F =>    --Forward State
					if (f_init = '0' and f_val = '1') then --Verify if in Learning Phase and Result is Valid
						state <= ST_B;    --Switch to Backward State if not Learning
					else
					   if (f_init = '1' and f_val = '1') then  --Verify if in Learning Phase and Result is Valid
					       state <= ST_IO; --Switch to I/O Ready State if Learning
					   else
					       f <= '1';   --Forward Enable
							bcast <= '0';
							io <= '0';
							b <= '0';
							u <= '0';
							cnt <= "0000";
					   end if;
					end if;
                when ST_B =>    --Backward State
                    if (b_val = '1') then   --Verify Result is Valid
								state <= ST_U; --Switch to update State if Valid
					else
					   b <= '1';   --Backward Enable
						bcast <= '0';
						io <= '0';
						f <= '0';
						u <= '0';
						cnt <= "0000";
					end if;
					 when ST_U => -- Update state
						b <= '1'; -- keep b for acc_b
						u <= '1'; -- turn on u for 1 cp
						bcast <= '0';
						io <= '0';
						f <= '0';
						cnt <= "0000";
						state <= ST_U2;
					 when ST_U2 => 
						b <= '1'; -- keep b for acc_b
						u <= '1'; -- turn on u for 1 cp
						bcast <= '0';
						io <= '0';
						f <= '0';
						cnt <= "0000";
						state <= ST_IO;
                when others =>
            end case;
        end if;
    end process st;
   
   bcast_en <= bcast;   --Broadcast Enable
   io_rdy <= io;    --I/O Ready
   f_en <= f;   --Forward Enable
   b_en <= b;   --Backward Enable
	u_en <= u;
	still_fwd <= sf;
end Behavioral;
