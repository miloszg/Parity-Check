--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:18:06 03/09/2018
-- Design Name:   
-- Module Name:   E:/cw3/parzystosc/UUT2.vhd
-- Project Name:  parzystosc
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: parzystosc
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;
 
ENTITY UUT2 IS
END UUT2;
 
ARCHITECTURE behavior OF UUT2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT parzystosc
    PORT(
         we0 : IN  std_logic;
         we1 : IN  std_logic;
         we2 : IN  std_logic;
         we3 : IN  std_logic;
         we4 : IN  std_logic;
         we5 : IN  std_logic;
         we6 : IN  std_logic;
         we7 : IN  std_logic;
         led7_seg : OUT  std_logic_vector(7 downto 0);
         led7_an : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal we0 : std_logic := '1';
   signal we1 : std_logic := '0';
   signal we2 : std_logic := '1';
   signal we3 : std_logic := '0';
   signal we4 : std_logic := '1';
   signal we5 : std_logic := '0';
   signal we6 : std_logic := '1';
   signal we7 : std_logic := '0';

 	--Outputs
   signal led7_seg : std_logic_vector(7 downto 0):= "01100001";
   signal led7_an : std_logic_vector(3 downto 0):= "0111";

	 constant PERIOD : time := 200 ns;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 100 ns;

    BEGIN
        UUT : parzystosc
        PORT MAP (
            we0 => we0,
            we1 => we1,
            we2 => we2,
            we3 => we3,
            we4 => we4,
            we5 => we5,
            we6 => we6,
            we7 => we7,
            
            led7_seg => led7_seg,
            led7_an => led7_an
        );
		  



        PROCESS    -- clock process for we0
      
BEGIN
wait for 15 ns;
we4 <= '0';
wait for 15 ns;
we7 <= '1';
wait;
END PROCESS;

 --       PROCESS
   --         BEGIN
     --           WAIT FOR 1200 ns;

       --     END PROCESS;

    END behavior;

