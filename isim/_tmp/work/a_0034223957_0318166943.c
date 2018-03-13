/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2007 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

/* This file is designed for use with ISim build 0xef153c89 */

#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "E:/cw3/parzystosc/bramka.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_2507238156_2592010699(char *, unsigned char , unsigned char );


static void work_a_0034223957_0318166943_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    unsigned char t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    unsigned char t14;
    char *t15;
    unsigned char t16;
    unsigned char t17;
    unsigned char t18;
    char *t19;
    unsigned char t20;
    char *t21;
    unsigned char t22;
    unsigned char t23;
    unsigned char t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;

LAB0:    xsi_set_current_line(45, ng0);

LAB3:    t1 = (t0 + 548U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 636U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t6 = ieee_p_2592010699_sub_2507238156_2592010699(IEEE_P_2592010699, t3, t5);
    t1 = (t0 + 724U);
    t7 = *((char **)t1);
    t8 = *((unsigned char *)t7);
    t1 = (t0 + 812U);
    t9 = *((char **)t1);
    t10 = *((unsigned char *)t9);
    t11 = ieee_p_2592010699_sub_2507238156_2592010699(IEEE_P_2592010699, t8, t10);
    t12 = ieee_p_2592010699_sub_2507238156_2592010699(IEEE_P_2592010699, t6, t11);
    t1 = (t0 + 900U);
    t13 = *((char **)t1);
    t14 = *((unsigned char *)t13);
    t1 = (t0 + 988U);
    t15 = *((char **)t1);
    t16 = *((unsigned char *)t15);
    t17 = ieee_p_2592010699_sub_2507238156_2592010699(IEEE_P_2592010699, t14, t16);
    t18 = ieee_p_2592010699_sub_2507238156_2592010699(IEEE_P_2592010699, t12, t17);
    t1 = (t0 + 1076U);
    t19 = *((char **)t1);
    t20 = *((unsigned char *)t19);
    t1 = (t0 + 1164U);
    t21 = *((char **)t1);
    t22 = *((unsigned char *)t21);
    t23 = ieee_p_2592010699_sub_2507238156_2592010699(IEEE_P_2592010699, t20, t22);
    t24 = ieee_p_2592010699_sub_2507238156_2592010699(IEEE_P_2592010699, t18, t23);
    t1 = (t0 + 2396);
    t25 = (t1 + 32U);
    t26 = *((char **)t25);
    t27 = (t26 + 40U);
    t28 = *((char **)t27);
    *((unsigned char *)t28) = t24;
    xsi_driver_first_trans_fast(t1);

LAB2:    t29 = (t0 + 2344);
    *((int *)t29) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0034223957_0318166943_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1428U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 3509);
    t5 = (t0 + 2432);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_delta(t5, 0U, 4U, 0LL);
    xsi_set_current_line(56, ng0);
    t1 = (t0 + 3513);
    t5 = (t0 + 2468);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_delta(t5, 0U, 8U, 0LL);

LAB3:    t1 = (t0 + 2352);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 3497);
    t6 = (t0 + 2432);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_delta(t6, 0U, 4U, 0LL);
    xsi_set_current_line(53, ng0);
    t1 = (t0 + 3501);
    t5 = (t0 + 2468);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_delta(t5, 0U, 8U, 0LL);
    goto LAB3;

}


extern void work_a_0034223957_0318166943_init()
{
	static char *pe[] = {(void *)work_a_0034223957_0318166943_p_0,(void *)work_a_0034223957_0318166943_p_1};
	xsi_register_didat("work_a_0034223957_0318166943", "isim/_tmp/work/a_0034223957_0318166943.didat");
	xsi_register_executes(pe);
}
