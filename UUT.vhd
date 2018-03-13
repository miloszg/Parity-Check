--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:38:52 03/08/2018
-- Design Name:   
-- Module Name:   C:/Users/KDR/Desktop/IUP/final/parzystosc/UUT.vhd
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
-- PARZYSTE 0 NA WYJSCIU, E JAK EVEN

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY UUT1_tb_0 IS
END UUT1_tb_0;

ARCHITECTURE testbench_arch OF UUT1_tb_0 IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT parzystosc
        PORT (
            we0 : In std_logic;
            we1 : In std_logic;
            we2 : In std_logic;
            we3 : In std_logic;
            we4 : In std_logic;
            we5 : In std_logic;
            we6 : In std_logic;
            we7 : In std_logic;
           -- y : Buffer std_logic;
            led7_seg : Out std_logic_vector (7 DownTo 0);
            led7_an : Out std_logic_vector (3 DownTo 0)
        );
    END COMPONENT;

    SIGNAL we0 : std_logic := '1';
    SIGNAL we1 : std_logic := '0';
    SIGNAL we2 : std_logic := '1';
    SIGNAL we3 : std_logic := '0';
    SIGNAL we4 : std_logic := '1';
    SIGNAL we5 : std_logic := '0';
    SIGNAL we6 : std_logic := '1';
    SIGNAL we7 : std_logic := '0';
    SIGNAL y : std_logic := '0';
    SIGNAL led7_seg : std_logic_vector (7 DownTo 0) := "01100001";
    SIGNAL led7_an : std_logic_vector (3 DownTo 0) := "0111";

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
            y => y,
            led7_seg => led7_seg,
            led7_an => led7_an
        );

        PROCESS    -- clock process for we0
        BEGIN
            WAIT for OFFSET;
            CLOCK_LOOP : LOOP
                we0 <= '0';
                WAIT FOR (PERIOD - (PERIOD * DUTY_CYCLE));
                we0 <= '1';
                WAIT FOR (PERIOD * DUTY_CYCLE);
            END LOOP CLOCK_LOOP;
        END PROCESS;

        PROCESS
            BEGIN
                WAIT FOR 1200 ns;

            END PROCESS;

    END testbench_arch;