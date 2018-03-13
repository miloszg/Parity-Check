--------------------------------------------------------------------------------
-- Copyright (c) 1995-2003 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : ISE
--  /   /         Filename : lol.vhw
-- /___/   /\     Timestamp : Mon Mar 05 17:27:47 2018
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: lol
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY lol IS
END lol;

ARCHITECTURE testbench_arch OF lol IS
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
            y : Out std_logic;
            led7_seg : Out std_logic_vector (7 DownTo 0);
            led7_an : Out std_logic_vector (3 DownTo 0)
        );
    END COMPONENT;

    SIGNAL we0 : std_logic := '0';
    SIGNAL we1 : std_logic := '0';
    SIGNAL we2 : std_logic := '0';
    SIGNAL we3 : std_logic := '0';
    SIGNAL we4 : std_logic := '0';
    SIGNAL we5 : std_logic := '0';
    SIGNAL we6 : std_logic := '0';
    SIGNAL we7 : std_logic := '0';
    SIGNAL y : std_logic := '0';
    SIGNAL led7_seg : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL led7_an : std_logic_vector (3 DownTo 0) := "0000";

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
                -- -------------  Current Time:  185ns
                WAIT FOR 185 ns;
                we2 <= '1';
                we3 <= '1';
                we5 <= '1';
                we6 <= '1';
                -- -------------------------------------
                WAIT FOR 1015 ns;

            END PROCESS;

    END testbench_arch;

