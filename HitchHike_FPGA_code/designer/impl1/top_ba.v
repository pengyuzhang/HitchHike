`timescale 1 ns/100 ps
// Version: v11.5 11.5.0.26
// File used only for Simulation


module PLLBA(
       CLKA,
       EXTFB,
       POWERDOWN,
       GLA,
       LOCK,
       GLB,
       YB,
       GLC,
       YC,
       OADIV0,
       OADIV1,
       OADIV2,
       OADIV3,
       OADIV4,
       OAMUX0,
       OAMUX1,
       OAMUX2,
       DLYGLA0,
       DLYGLA1,
       DLYGLA2,
       DLYGLA3,
       DLYGLA4,
       OBDIV0,
       OBDIV1,
       OBDIV2,
       OBDIV3,
       OBDIV4,
       OBMUX0,
       OBMUX1,
       OBMUX2,
       DLYYB0,
       DLYYB1,
       DLYYB2,
       DLYYB3,
       DLYYB4,
       DLYGLB0,
       DLYGLB1,
       DLYGLB2,
       DLYGLB3,
       DLYGLB4,
       OCDIV0,
       OCDIV1,
       OCDIV2,
       OCDIV3,
       OCDIV4,
       OCMUX0,
       OCMUX1,
       OCMUX2,
       DLYYC0,
       DLYYC1,
       DLYYC2,
       DLYYC3,
       DLYYC4,
       DLYGLC0,
       DLYGLC1,
       DLYGLC2,
       DLYGLC3,
       DLYGLC4,
       FINDIV0,
       FINDIV1,
       FINDIV2,
       FINDIV3,
       FINDIV4,
       FINDIV5,
       FINDIV6,
       FBDIV0,
       FBDIV1,
       FBDIV2,
       FBDIV3,
       FBDIV4,
       FBDIV5,
       FBDIV6,
       FBDLY0,
       FBDLY1,
       FBDLY2,
       FBDLY3,
       FBDLY4,
       FBSEL0,
       FBSEL1,
       XDLYSEL,
       VCOSEL0,
       VCOSEL1,
       VCOSEL2
    );
input  CLKA;
input  EXTFB;
input  POWERDOWN;
output GLA;
output LOCK;
output GLB;
output YB;
output GLC;
output YC;
input  OADIV0;
input  OADIV1;
input  OADIV2;
input  OADIV3;
input  OADIV4;
input  OAMUX0;
input  OAMUX1;
input  OAMUX2;
input  DLYGLA0;
input  DLYGLA1;
input  DLYGLA2;
input  DLYGLA3;
input  DLYGLA4;
input  OBDIV0;
input  OBDIV1;
input  OBDIV2;
input  OBDIV3;
input  OBDIV4;
input  OBMUX0;
input  OBMUX1;
input  OBMUX2;
input  DLYYB0;
input  DLYYB1;
input  DLYYB2;
input  DLYYB3;
input  DLYYB4;
input  DLYGLB0;
input  DLYGLB1;
input  DLYGLB2;
input  DLYGLB3;
input  DLYGLB4;
input  OCDIV0;
input  OCDIV1;
input  OCDIV2;
input  OCDIV3;
input  OCDIV4;
input  OCMUX0;
input  OCMUX1;
input  OCMUX2;
input  DLYYC0;
input  DLYYC1;
input  DLYYC2;
input  DLYYC3;
input  DLYYC4;
input  DLYGLC0;
input  DLYGLC1;
input  DLYGLC2;
input  DLYGLC3;
input  DLYGLC4;
input  FINDIV0;
input  FINDIV1;
input  FINDIV2;
input  FINDIV3;
input  FINDIV4;
input  FINDIV5;
input  FINDIV6;
input  FBDIV0;
input  FBDIV1;
input  FBDIV2;
input  FBDIV3;
input  FBDIV4;
input  FBDIV5;
input  FBDIV6;
input  FBDLY0;
input  FBDLY1;
input  FBDLY2;
input  FBDLY3;
input  FBDLY4;
input  FBSEL0;
input  FBSEL1;
input  XDLYSEL;
input  VCOSEL0;
input  VCOSEL1;
input  VCOSEL2;

    wire GND, SDOUT, FB, EXTFBDLY, GLADLY, LOCKDLY, GLBDLY, YBDLY, 
        GLCDLY, YCDLY, VCODLY;
    wire GND_power_net1;
    assign GND = GND_power_net1;
    
    PLL_SDF #( .VCOFREQUENCY(100.000000) )  pll_sdf_0 (.CLKA(CLKA), 
        .EXTFB(EXTFBDLY), .POWERDOWN(POWERDOWN), .GLAOUT(GLADLY), 
        .LOCKOUT(LOCKDLY), .GLBOUT(GLBDLY), .YBOUT(YBDLY), .GLCOUT(
        GLCDLY), .YCOUT(YCDLY), .OADIV0(OADIV0), .OADIV1(OADIV1), 
        .OADIV2(OADIV2), .OADIV3(OADIV3), .OADIV4(OADIV4), .OAMUX0(
        OAMUX0), .OAMUX1(OAMUX1), .OAMUX2(OAMUX2), .DLYGLA0(DLYGLA0), 
        .DLYGLA1(DLYGLA1), .DLYGLA2(DLYGLA2), .DLYGLA3(DLYGLA3), 
        .DLYGLA4(DLYGLA4), .OBDIV0(OBDIV0), .OBDIV1(OBDIV1), .OBDIV2(
        OBDIV2), .OBDIV3(OBDIV3), .OBDIV4(OBDIV4), .OBMUX0(OBMUX0), 
        .OBMUX1(OBMUX1), .OBMUX2(OBMUX2), .DLYYB0(DLYYB0), .DLYYB1(
        DLYYB1), .DLYYB2(DLYYB2), .DLYYB3(DLYYB3), .DLYYB4(DLYYB4), 
        .DLYGLB0(DLYGLB0), .DLYGLB1(DLYGLB1), .DLYGLB2(DLYGLB2), 
        .DLYGLB3(DLYGLB3), .DLYGLB4(DLYGLB4), .OCDIV0(OCDIV0), .OCDIV1(
        OCDIV1), .OCDIV2(OCDIV2), .OCDIV3(OCDIV3), .OCDIV4(OCDIV4), 
        .OCMUX0(OCMUX0), .OCMUX1(OCMUX1), .OCMUX2(OCMUX2), .DLYYC0(
        DLYYC0), .DLYYC1(DLYYC1), .DLYYC2(DLYYC2), .DLYYC3(DLYYC3), 
        .DLYYC4(DLYYC4), .DLYGLC0(DLYGLC0), .DLYGLC1(DLYGLC1), 
        .DLYGLC2(DLYGLC2), .DLYGLC3(DLYGLC3), .DLYGLC4(DLYGLC4), 
        .FINDIV0(FINDIV0), .FINDIV1(FINDIV1), .FINDIV2(FINDIV2), 
        .FINDIV3(FINDIV3), .FINDIV4(FINDIV4), .FINDIV5(FINDIV5), 
        .FINDIV6(FINDIV6), .FBDIV0(FBDIV0), .FBDIV1(FBDIV1), .FBDIV2(
        FBDIV2), .FBDIV3(FBDIV3), .FBDIV4(FBDIV4), .FBDIV5(FBDIV5), 
        .FBDIV6(FBDIV6), .FBDLY0(FBDLY0), .FBDLY1(FBDLY1), .FBDLY2(
        FBDLY2), .FBDLY3(FBDLY3), .FBDLY4(FBDLY4), .FBSEL0(FBSEL0), 
        .FBSEL1(FBSEL1), .XDLYSEL(XDLYSEL), .VCOSEL0(VCOSEL0), 
        .VCOSEL1(VCOSEL1), .VCOSEL2(VCOSEL2), .INTFB(FB), .VCOOUT(
        VCODLY));
    PLL_DLY_SDF #( .VCOFREQUENCY(100.000000) )  pll_dly_sdf_0 (.GLA(
        GLA), .LOCK(LOCK), .GLB(GLB), .YB(YB), .GLC(GLC), .YC(YC), 
        .GLAIN(GLADLY), .LOCKIN(LOCKDLY), .GLBIN(GLBDLY), .YBIN(YBDLY), 
        .GLCIN(GLCDLY), .YCIN(YCDLY), .EXTFBOUT(EXTFBDLY), .EXTFBIN(
        EXTFB), .VCOIN(VCODLY), .PLLOUT(FB));
    GND GND_power_inst1 (.Y(GND_power_net1));
    
endmodule


module top(
       clock,
       data_in,
       reset,
       trigger_signal,
       RSS_EN,
       ref_signal,
       signal_into_switch
    );
input  clock;
input  [9:0] data_in;
input  reset;
input  trigger_signal;
output RSS_EN;
output ref_signal;
output signal_into_switch;

    wire output_data_rate, AND2_1_Y, data_path_signal, 
        modulator_0_output_signal, AND2_3_Y, two_mhz_clock_output_pin, 
        GLA, ten_mhz_clock_0_clock_out, clock_c, \data_in_c[0] , 
        \data_in_c[1] , \data_in_c[2] , \data_in_c[3] , \data_in_c[4] , 
        \data_in_c[5] , \data_in_c[6] , \data_in_c[7] , \data_in_c[8] , 
        \data_in_c[9] , reset_c, trigger_signal_c, ref_signal_c, 
        signal_into_switch_c, \modulator_0/output_signal_i , 
        \modulator_0/clock_counter_33_0 , 
        \modulator_0/clock_counter[14]_net_1 , 
        \modulator_0/un4lto15_1 , 
        \modulator_0/clock_counter[13]_net_1 , 
        \modulator_0/clock_counter[15]_net_1 , 
        \modulator_0/un3lto15_1 , \modulator_0/un3lto11_0 , 
        \modulator_0/un4lto11 , \modulator_0/un4lto10 , 
        \modulator_0/un4lto8_0 , \modulator_0/clock_counter[8]_net_1 , 
        \modulator_0/clock_counter[7]_net_1 , \modulator_0/un3lto9_2 , 
        \modulator_0/un4lto9 , \modulator_0/un3lto9_1 , 
        \modulator_0/clock_counter[6]_net_1 , \modulator_0/un4lto6_0 , 
        \modulator_0/un3lto5 , \modulator_0/un4lt4_2 , 
        \modulator_0/clock_counter[1]_net_1 , 
        \modulator_0/clock_counter[2]_net_1 , \modulator_0/un3lto4 , 
        \modulator_0/un4lt4_1 , \modulator_0/clock_counter[0]_net_1 , 
        \modulator_0/un3lto3 , \modulator_0/output_signal_3_0_0 , 
        \modulator_0/un3_0_0 , \modulator_0/un4_0_0 , 
        \modulator_0/un4lto12 , \modulator_0/un4lt12 , 
        \modulator_0/un4lt8 , \modulator_0/un3lt12 , 
        \modulator_0/un3lt9 , \modulator_0/clock_counter_n2 , 
        \modulator_0/clock_counter_c1 , \modulator_0/clock_counter_n3 , 
        \modulator_0/clock_counter_c2 , \modulator_0/clock_counter_n4 , 
        \modulator_0/clock_counter_c3 , \modulator_0/clock_counter_n5 , 
        \modulator_0/clock_counter_c4 , \modulator_0/clock_counter_n6 , 
        \modulator_0/clock_counter_c5 , \modulator_0/clock_counter_n7 , 
        \modulator_0/clock_counter_c6 , \modulator_0/clock_counter_n8 , 
        \modulator_0/clock_counter_c7 , \modulator_0/clock_counter_n9 , 
        \modulator_0/clock_counter_c8 , 
        \modulator_0/clock_counter_n10 , 
        \modulator_0/clock_counter_c9 , 
        \modulator_0/clock_counter_n11 , 
        \modulator_0/clock_counter_c10 , 
        \modulator_0/clock_counter_n12 , 
        \modulator_0/clock_counter_c11 , 
        \modulator_0/clock_counter_n13 , 
        \modulator_0/clock_counter_c12 , 
        \modulator_0/clock_counter_n14 , 
        \modulator_0/clock_counter_c13 , \modulator_0/N_69 , 
        \modulator_0/un4lt10 , \modulator_0/clock_counter_n0 , 
        \modulator_0/clock_counter_n1 , 
        \modulator_0/clock_counter_n15 , \ten_mhz_clock_0/clock_out_i , 
        \ten_mhz_clock_0/counter[1]_net_1 , 
        \ten_mhz_clock_0/counter[0]_net_1 , 
        \ten_mhz_clock_0/counter[3]_net_1 , 
        \ten_mhz_clock_0/DWACT_FINC_E[0] , 
        \ten_mhz_clock_0/counter[8]_net_1 , 
        \ten_mhz_clock_0/DWACT_FINC_E[4] , 
        \ten_mhz_clock_0/counter14_8 , \ten_mhz_clock_0/counter14_2 , 
        \ten_mhz_clock_0/counter14_1 , \ten_mhz_clock_0/counter14_5 , 
        \ten_mhz_clock_0/counter14_7 , \ten_mhz_clock_0/counter14_4 , 
        \ten_mhz_clock_0/counter[6]_net_1 , 
        \ten_mhz_clock_0/counter[10]_net_1 , 
        \ten_mhz_clock_0/counter[11]_net_1 , 
        \ten_mhz_clock_0/counter[4]_net_1 , 
        \ten_mhz_clock_0/counter[2]_net_1 , 
        \ten_mhz_clock_0/counter[5]_net_1 , 
        \ten_mhz_clock_0/counter[9]_net_1 , 
        \ten_mhz_clock_0/counter[7]_net_1 , 
        \ten_mhz_clock_0/clock_out_RNO_0 , 
        \ten_mhz_clock_0/counter_3[2] , \ten_mhz_clock_0/I_7_0 , 
        \ten_mhz_clock_0/counter_3[0] , \ten_mhz_clock_0/I_5_0 , 
        \ten_mhz_clock_0/I_9_0 , \ten_mhz_clock_0/I_12_0 , 
        \ten_mhz_clock_0/I_14_0 , \ten_mhz_clock_0/I_17_0 , 
        \ten_mhz_clock_0/I_20_0 , \ten_mhz_clock_0/I_23 , 
        \ten_mhz_clock_0/I_26 , \ten_mhz_clock_0/I_28 , 
        \ten_mhz_clock_0/I_32 , \ten_mhz_clock_0/N_2 , 
        \ten_mhz_clock_0/DWACT_FINC_E[6] , 
        \ten_mhz_clock_0/DWACT_FINC_E[2] , 
        \ten_mhz_clock_0/DWACT_FINC_E[5] , \ten_mhz_clock_0/N_3 , 
        \ten_mhz_clock_0/DWACT_FINC_E[3] , \ten_mhz_clock_0/N_5 , 
        \ten_mhz_clock_0/N_6 , \ten_mhz_clock_0/N_7 , 
        \ten_mhz_clock_0/DWACT_FINC_E[1] , \ten_mhz_clock_0/N_8 , 
        \ten_mhz_clock_0/N_10 , \two_mhz_clock_0/clock_out_i , 
        \two_mhz_clock_0/counter[1]_net_1 , 
        \two_mhz_clock_0/counter[0]_net_1 , 
        \two_mhz_clock_0/counter[3]_net_1 , 
        \two_mhz_clock_0/DWACT_FINC_E[0] , 
        \two_mhz_clock_0/counter[8]_net_1 , 
        \two_mhz_clock_0/DWACT_FINC_E[4] , 
        \two_mhz_clock_0/counter14_9 , \two_mhz_clock_0/counter14_1 , 
        \two_mhz_clock_0/counter14_0 , \two_mhz_clock_0/counter14_7 , 
        \two_mhz_clock_0/counter14_8 , 
        \two_mhz_clock_0/counter[4]_net_1 , 
        \two_mhz_clock_0/counter14_5 , 
        \two_mhz_clock_0/counter[5]_net_1 , 
        \two_mhz_clock_0/counter14_3 , 
        \two_mhz_clock_0/counter[2]_net_1 , 
        \two_mhz_clock_0/counter[6]_net_1 , 
        \two_mhz_clock_0/counter[9]_net_1 , 
        \two_mhz_clock_0/counter[7]_net_1 , 
        \two_mhz_clock_0/counter[11]_net_1 , 
        \two_mhz_clock_0/counter[10]_net_1 , 
        \two_mhz_clock_0/clock_out_RNO_1 , 
        \two_mhz_clock_0/counter_3[5] , \two_mhz_clock_0/I_14_1 , 
        \two_mhz_clock_0/counter_3[4] , \two_mhz_clock_0/I_12_1 , 
        \two_mhz_clock_0/counter_3[1] , \two_mhz_clock_0/I_5_1 , 
        \two_mhz_clock_0/I_4 , \two_mhz_clock_0/I_7_1 , 
        \two_mhz_clock_0/I_9_1 , \two_mhz_clock_0/I_17_1 , 
        \two_mhz_clock_0/I_20_1 , \two_mhz_clock_0/I_23_0 , 
        \two_mhz_clock_0/I_26_0 , \two_mhz_clock_0/I_28_0 , 
        \two_mhz_clock_0/I_32_0 , \two_mhz_clock_0/N_2 , 
        \two_mhz_clock_0/DWACT_FINC_E[6] , 
        \two_mhz_clock_0/DWACT_FINC_E[2] , 
        \two_mhz_clock_0/DWACT_FINC_E[5] , \two_mhz_clock_0/N_3 , 
        \two_mhz_clock_0/DWACT_FINC_E[3] , \two_mhz_clock_0/N_5 , 
        \two_mhz_clock_0/N_6 , \two_mhz_clock_0/N_7 , 
        \two_mhz_clock_0/DWACT_FINC_E[1] , \two_mhz_clock_0/N_8 , 
        \two_mhz_clock_0/N_10 , GND, VCC, 
        \data_rate_0/un1_output_data_rate83_0 , 
        \data_rate_0/bit_index17lt3 , \data_rate_0/bit_index[3]_net_1 , 
        \data_rate_0/packet_start_flag_net_1 , 
        \data_rate_0/output_data_rate_1_sqmuxa_10_8 , 
        \data_rate_0/output_data_rate_1_sqmuxa_10_0 , 
        \data_rate_0/output_data_rate_1_sqmuxa_10_6 , 
        \data_rate_0/output_data_rate_1_sqmuxa , 
        \data_rate_0/output_data_rate_1_sqmuxa_10_7 , 
        \data_rate_0/output_data_rate_1_sqmuxa_10_3 , 
        \data_rate_0/output_data_rate_1_sqmuxa_1 , 
        \data_rate_0/output_data_rate_1_sqmuxa_8 , 
        \data_rate_0/output_data_rate_1_sqmuxa_10_1 , 
        \data_rate_0/output_data_rate_1_sqmuxa_9 , 
        \data_rate_0/output_data_rate_1_sqmuxa_7 , 
        \data_rate_0/output_data_rate_1_sqmuxa_3_2 , 
        \data_rate_0/output_data_rate_1_sqmuxa_3_1 , 
        \data_rate_0/output_data_rate_1_sqmuxa_4 , 
        \data_rate_0/output_data_rate_1_sqmuxa_5_2 , 
        \data_rate_0/output_data_rate_1_sqmuxa_6_2 , 
        \data_rate_0/output_data_rate_1_sqmuxa_7_1 , 
        \data_rate_0/output_data_rate_1_sqmuxa_2_2 , 
        \data_rate_0/output_data_rate_1_sqmuxa_1_1 , 
        \data_rate_0/data[8]_net_1 , \data_rate_0/bit_index[0]_net_1 , 
        \data_rate_0/output_data_rate_1_sqmuxa_1_0 , 
        \data_rate_0/data[9]_net_1 , 
        \data_rate_0/output_data_rate_1_sqmuxa_4_1 , 
        \data_rate_0/bit_index[2]_net_1 , \data_rate_0/data[5]_net_1 , 
        \data_rate_0/output_data_rate_1_sqmuxa_8_1 , 
        \data_rate_0/data[1]_net_1 , \data_rate_0/bit_index[1]_net_1 , 
        \data_rate_0/data[7]_net_1 , 
        \data_rate_0/output_data_rate_1_sqmuxa_9_2 , 
        \data_rate_0/data[0]_net_1 , \data_rate_0/data[4]_net_1 , 
        \data_rate_0/data[3]_net_1 , \data_rate_0/data[6]_net_1 , 
        \data_rate_0/output_data_rate_1_sqmuxa_7_0 , 
        \data_rate_0/data[2]_net_1 , \data_rate_0/bit_index21_4_0 , 
        \data_rate_0/bit_index21_2 , \data_rate_0/counter[6]_net_1 , 
        \data_rate_0/counter[7]_net_1 , \data_rate_0/counter[5]_net_1 , 
        \data_rate_0/counter[4]_net_1 , \data_rate_0/bit_index21_1 , 
        \data_rate_0/counter[1]_net_1 , \data_rate_0/counter[0]_net_1 , 
        \data_rate_0/bit_index21_0 , \data_rate_0/counter[3]_net_1 , 
        \data_rate_0/counter[2]_net_1 , 
        \data_rate_0/output_data_rate_1_sqmuxa_10 , 
        \data_rate_0/un1_output_data_rate83 , 
        \data_rate_0/bit_index21 , \data_rate_0/packet_start_flag6 , 
        \data_rate_0/counter_c2 , \data_rate_0/bit_index_n3 , 
        \data_rate_0/bit_index_n3_tz , \data_rate_0/bit_index_c1 , 
        \data_rate_0/bit_index_n2 , \data_rate_0/counter_n2 , 
        \data_rate_0/bit_index_1_sqmuxa_1 , 
        \data_rate_0/counter_n2_tz , \data_rate_0/counter_n3 , 
        \data_rate_0/counter_n4 , \data_rate_0/counter_n4_tz , 
        \data_rate_0/counter_n5 , \data_rate_0/counter_c4 , 
        \data_rate_0/counter_n6 , \data_rate_0/counter_n6_tz , 
        \data_rate_0/counter_n7 , \data_rate_0/counter_15_0 , 
        \data_rate_0/output_data_rate_25 , \data_rate_0/bit_index_n1 , 
        \data_rate_0/N_119 , \data_rate_0/packet_start_flag_1_sqmuxa , 
        \data_rate_0/un1_bit_index21[0] , \data_rate_0/counter_n0 , 
        \data_rate_0/counter_n1 , \main_clock_0/counter[1]_net_1 , 
        \main_clock_0/counter[0]_net_1 , 
        \main_clock_0/counter[3]_net_1 , 
        \main_clock_0/DWACT_FINC_E[0] , \main_clock_0/counter14_4 , 
        \main_clock_0/counter14_2 , \main_clock_0/counter[2]_net_1 , 
        \main_clock_0/counter[5]_net_1 , \main_clock_0/counter14_3 , 
        \main_clock_0/counter[6]_net_1 , 
        \main_clock_0/counter[7]_net_1 , 
        \main_clock_0/counter[4]_net_1 , 
        \main_clock_0/clock_out_RNO_net_1 , 
        \main_clock_0/counter_3[0] , \main_clock_0/I_5 , 
        \main_clock_0/I_7 , \main_clock_0/I_9 , \main_clock_0/I_12 , 
        \main_clock_0/I_14 , \main_clock_0/I_17 , \main_clock_0/I_20 , 
        \main_clock_0/N_2 , \main_clock_0/DWACT_FINC_E[2] , 
        \main_clock_0/N_3 , \main_clock_0/DWACT_FINC_E[1] , 
        \main_clock_0/N_4 , \main_clock_0/N_6 , 
        \data_in_pad[1]/U0/NET1 , \signal_into_switch_pad/U0/NET1 , 
        \signal_into_switch_pad/U0/NET2 , \ref_signal_pad/U0/NET1 , 
        \ref_signal_pad/U0/NET2 , \data_in_pad[2]/U0/NET1 , 
        \data_in_pad[5]/U0/NET1 , \data_in_pad[6]/U0/NET1 , 
        \data_in_pad[3]/U0/NET1 , \reset_pad/U0/NET1 , 
        \data_in_pad[9]/U0/NET1 , \data_in_pad[4]/U0/NET1 , 
        \data_in_pad[0]/U0/NET1 , \data_in_pad[7]/U0/NET1 , 
        \trigger_signal_pad/U0/NET1 , \data_in_pad[8]/U0/NET1 , 
        \RSS_EN_pad/U0/NET1 , \RSS_EN_pad/U0/NET2 , 
        \clock_pad/U0/NET1 , AFLSDF_VCC, AFLSDF_GND, 
        AFLSDF_INV_0_net_1;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GND = GND_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    XOR2 \two_mhz_clock_0/un5_counter_I_32  (.A(\two_mhz_clock_0/N_2 ), 
        .B(\two_mhz_clock_0/counter[11]_net_1 ), .Y(
        \two_mhz_clock_0/I_32_0 ));
    NOR3A \main_clock_0/counter_RNI0BUP1[2]  (.A(
        \main_clock_0/counter14_2 ), .B(
        \main_clock_0/counter[2]_net_1 ), .C(
        \main_clock_0/counter[5]_net_1 ), .Y(
        \main_clock_0/counter14_4 ));
    NOR3B \two_mhz_clock_0/counter_RNI87DS1[1]  (.A(
        \two_mhz_clock_0/counter[4]_net_1 ), .B(
        \two_mhz_clock_0/counter14_5 ), .C(
        \two_mhz_clock_0/counter[1]_net_1 ), .Y(
        \two_mhz_clock_0/counter14_8 ));
    NOR3A \data_rate_0/output_data_rate_RNO_2  (.A(
        \data_rate_0/output_data_rate_1_sqmuxa_10_3 ), .B(
        \data_rate_0/output_data_rate_1_sqmuxa_1 ), .C(
        \data_rate_0/output_data_rate_1_sqmuxa_8 ), .Y(
        \data_rate_0/output_data_rate_1_sqmuxa_10_7 ));
    NOR3C \data_rate_0/counter_RNI1B8B1[2]  (.A(
        \data_rate_0/counter[1]_net_1 ), .B(
        \data_rate_0/counter[0]_net_1 ), .C(
        \data_rate_0/counter[2]_net_1 ), .Y(\data_rate_0/counter_c2 ));
    XOR2 \ten_mhz_clock_0/un5_counter_1_I_23  (.A(
        \ten_mhz_clock_0/N_5 ), .B(\ten_mhz_clock_0/counter[8]_net_1 ), 
        .Y(\ten_mhz_clock_0/I_23 ));
    NOR2B \modulator_0/clock_counter_RNIPVCH1[13]  (.A(
        \modulator_0/clock_counter_c12 ), .B(
        \modulator_0/clock_counter[13]_net_1 ), .Y(
        \modulator_0/clock_counter_c13 ));
    DFN1C0 \data_rate_0/data[0]  (.D(\data_in_c[0] ), .CLK(
        modulator_0_output_signal), .CLR(reset_c), .Q(
        \data_rate_0/data[0]_net_1 ));
    CLKINT \modulator_0/output_signal_RNI2QGD  (.A(
        \modulator_0/output_signal_i ), .Y(modulator_0_output_signal));
    NOR3A \data_rate_0/output_data_rate_RNO_15  (.A(
        \data_rate_0/output_data_rate_1_sqmuxa_4_1 ), .B(
        \data_rate_0/bit_index[0]_net_1 ), .C(
        \data_rate_0/bit_index[1]_net_1 ), .Y(
        \data_rate_0/output_data_rate_1_sqmuxa_4 ));
    DFN1C0 \two_mhz_clock_0/counter[7]  (.D(\two_mhz_clock_0/I_20_1 ), 
        .CLK(GLA), .CLR(reset_c), .Q(
        \two_mhz_clock_0/counter[7]_net_1 ));
    IOPAD_IN \data_in_pad[5]/U0/U0  (.PAD(data_in[5]), .Y(
        \data_in_pad[5]/U0/NET1 ));
    DFN1C0 \data_rate_0/data[2]  (.D(\data_in_c[2] ), .CLK(
        modulator_0_output_signal), .CLR(reset_c), .Q(
        \data_rate_0/data[2]_net_1 ));
    DFN1C0 \ten_mhz_clock_0/counter[4]  (.D(\ten_mhz_clock_0/I_12_0 ), 
        .CLK(GLA), .CLR(reset_c), .Q(
        \ten_mhz_clock_0/counter[4]_net_1 ));
    NOR2 \data_rate_0/bit_index_RNO[0]  (.A(
        \data_rate_0/bit_index[0]_net_1 ), .B(
        \data_rate_0/un1_output_data_rate83 ), .Y(\data_rate_0/N_119 ));
    AX1C \data_rate_0/counter_RNO_0[2]  (.A(
        \data_rate_0/counter[1]_net_1 ), .B(
        \data_rate_0/counter[0]_net_1 ), .C(
        \data_rate_0/counter[2]_net_1 ), .Y(
        \data_rate_0/counter_n2_tz ));
    DFN1C0 \two_mhz_clock_0/counter[5]  (.D(
        \two_mhz_clock_0/counter_3[5] ), .CLK(GLA), .CLR(reset_c), .Q(
        \two_mhz_clock_0/counter[5]_net_1 ));
    DFN1E0C0 \data_rate_0/bit_index[1]  (.D(\data_rate_0/bit_index_n1 )
        , .CLK(two_mhz_clock_output_pin), .CLR(reset_c), .E(
        \data_rate_0/bit_index_1_sqmuxa_1 ), .Q(
        \data_rate_0/bit_index[1]_net_1 ));
    OAI1 \data_rate_0/output_data_rate_RNO_10  (.A(
        \data_rate_0/output_data_rate_1_sqmuxa_5_2 ), .B(
        \data_rate_0/output_data_rate_1_sqmuxa_6_2 ), .C(
        \data_rate_0/output_data_rate_1_sqmuxa_7_1 ), .Y(
        \data_rate_0/output_data_rate_1_sqmuxa_10_1 ));
    NOR2B \modulator_0/clock_counter_RNIJ6HC[9]  (.A(
        \modulator_0/clock_counter_c8 ), .B(\modulator_0/un4lto9 ), .Y(
        \modulator_0/clock_counter_c9 ));
    XA1 \data_rate_0/counter_RNO[5]  (.A(\data_rate_0/counter_c4 ), .B(
        \data_rate_0/counter[5]_net_1 ), .C(
        \data_rate_0/bit_index_1_sqmuxa_1 ), .Y(
        \data_rate_0/counter_n5 ));
    DFN1C0 \two_mhz_clock_0/counter[4]  (.D(
        \two_mhz_clock_0/counter_3[4] ), .CLK(GLA), .CLR(reset_c), .Q(
        \two_mhz_clock_0/counter[4]_net_1 ));
    AX1C \data_rate_0/counter_RNO_0[4]  (.A(
        \data_rate_0/counter[3]_net_1 ), .B(\data_rate_0/counter_c2 ), 
        .C(\data_rate_0/counter[4]_net_1 ), .Y(
        \data_rate_0/counter_n4_tz ));
    XOR2 \two_mhz_clock_0/un5_counter_I_5  (.A(
        \two_mhz_clock_0/counter[0]_net_1 ), .B(
        \two_mhz_clock_0/counter[1]_net_1 ), .Y(
        \two_mhz_clock_0/I_5_1 ));
    OA1 \modulator_0/output_signal_RNO_1  (.A(\modulator_0/un4lto12 ), 
        .B(\modulator_0/un4lt12 ), .C(\modulator_0/un4lto15_1 ), .Y(
        \modulator_0/un4_0_0 ));
    XA1 \modulator_0/clock_counter_RNO[10]  (.A(\modulator_0/un4lto10 )
        , .B(\modulator_0/clock_counter_c9 ), .C(trigger_signal_c), .Y(
        \modulator_0/clock_counter_n10 ));
    DFN1C0 \data_rate_0/counter[4]  (.D(\data_rate_0/counter_n4 ), 
        .CLK(two_mhz_clock_output_pin), .CLR(reset_c), .Q(
        \data_rate_0/counter[4]_net_1 ));
    DFN1C0 \ten_mhz_clock_0/counter[6]  (.D(\ten_mhz_clock_0/I_17_0 ), 
        .CLK(GLA), .CLR(reset_c), .Q(
        \ten_mhz_clock_0/counter[6]_net_1 ));
    DFN1C0 \ten_mhz_clock_0/counter[3]  (.D(\ten_mhz_clock_0/I_9_0 ), 
        .CLK(GLA), .CLR(reset_c), .Q(
        \ten_mhz_clock_0/counter[3]_net_1 ));
    NOR3B \modulator_0/output_signal_RNO  (.A(\modulator_0/un3_0_0 ), 
        .B(trigger_signal_c), .C(\modulator_0/un4_0_0 ), .Y(
        \modulator_0/output_signal_3_0_0 ));
    NOR2A \data_rate_0/bit_index_RNO[3]  (.A(
        \data_rate_0/bit_index_n3_tz ), .B(
        \data_rate_0/un1_output_data_rate83 ), .Y(
        \data_rate_0/bit_index_n3 ));
    AND2 \two_mhz_clock_0/un5_counter_I_21  (.A(
        \two_mhz_clock_0/counter[6]_net_1 ), .B(
        \two_mhz_clock_0/counter[7]_net_1 ), .Y(
        \two_mhz_clock_0/DWACT_FINC_E[3] ));
    XA1 \modulator_0/clock_counter_RNO[3]  (.A(\modulator_0/un3lto3 ), 
        .B(\modulator_0/clock_counter_c2 ), .C(trigger_signal_c), .Y(
        \modulator_0/clock_counter_n3 ));
    NOR2B \data_rate_0/counter_RNO[6]  (.A(
        \data_rate_0/bit_index_1_sqmuxa_1 ), .B(
        \data_rate_0/counter_n6_tz ), .Y(\data_rate_0/counter_n6 ));
    NOR3 \data_rate_0/bit_index_RNI3D2G[2]  (.A(
        \data_rate_0/bit_index[2]_net_1 ), .B(
        \data_rate_0/bit_index[1]_net_1 ), .C(
        \data_rate_0/bit_index[0]_net_1 ), .Y(
        \data_rate_0/bit_index17lt3 ));
    AND2B AND2_1 (.A(output_data_rate), .B(ref_signal_c), .Y(AND2_1_Y));
    AX1C \two_mhz_clock_0/clock_out_RNO  (.A(
        \two_mhz_clock_0/counter14_8 ), .B(
        \two_mhz_clock_0/counter14_9 ), .C(
        \two_mhz_clock_0/clock_out_i ), .Y(
        \two_mhz_clock_0/clock_out_RNO_1 ));
    INV \two_mhz_clock_0/un5_counter_I_4  (.A(
        \two_mhz_clock_0/counter[0]_net_1 ), .Y(\two_mhz_clock_0/I_4 ));
    NOR3A \data_rate_0/output_data_rate_RNO_13  (.A(
        \data_rate_0/data[9]_net_1 ), .B(
        \data_rate_0/bit_index[3]_net_1 ), .C(
        \data_rate_0/bit_index[0]_net_1 ), .Y(
        \data_rate_0/output_data_rate_1_sqmuxa_1_0 ));
    DFN1C0 \ten_mhz_clock_0/clock_out  (.D(
        \ten_mhz_clock_0/clock_out_RNO_0 ), .CLK(GLA), .CLR(reset_c), 
        .Q(\ten_mhz_clock_0/clock_out_i ));
    AOI1 \data_rate_0/output_data_rate_RNO_6  (.A(
        \data_rate_0/output_data_rate_1_sqmuxa_3_2 ), .B(
        \data_rate_0/output_data_rate_1_sqmuxa_3_1 ), .C(
        \data_rate_0/output_data_rate_1_sqmuxa_4 ), .Y(
        \data_rate_0/output_data_rate_1_sqmuxa_10_3 ));
    XA1 \modulator_0/clock_counter_RNO[4]  (.A(\modulator_0/un3lto4 ), 
        .B(\modulator_0/clock_counter_c3 ), .C(trigger_signal_c), .Y(
        \modulator_0/clock_counter_n4 ));
    NOR2A \data_rate_0/counter_RNIT3RS[4]  (.A(
        \data_rate_0/counter[5]_net_1 ), .B(
        \data_rate_0/counter[4]_net_1 ), .Y(
        \data_rate_0/bit_index21_2 ));
    DFN1C0 \ten_mhz_clock_0/counter[1]  (.D(\ten_mhz_clock_0/I_5_0 ), 
        .CLK(GLA), .CLR(reset_c), .Q(
        \ten_mhz_clock_0/counter[1]_net_1 ));
    AND3 \ten_mhz_clock_0/un5_counter_1_I_31  (.A(
        \ten_mhz_clock_0/DWACT_FINC_E[6] ), .B(
        \ten_mhz_clock_0/counter[9]_net_1 ), .C(
        \ten_mhz_clock_0/counter[10]_net_1 ), .Y(\ten_mhz_clock_0/N_2 )
        );
    NOR3B \data_rate_0/output_data_rate_RNO_17  (.A(
        \data_rate_0/data[1]_net_1 ), .B(
        \data_rate_0/bit_index[3]_net_1 ), .C(
        \data_rate_0/bit_index[2]_net_1 ), .Y(
        \data_rate_0/output_data_rate_1_sqmuxa_8_1 ));
    DFN1C0 \two_mhz_clock_0/counter[2]  (.D(\two_mhz_clock_0/I_7_1 ), 
        .CLK(GLA), .CLR(reset_c), .Q(
        \two_mhz_clock_0/counter[2]_net_1 ));
    XA1B \data_rate_0/bit_index_RNO[2]  (.A(\data_rate_0/bit_index_c1 )
        , .B(\data_rate_0/bit_index[2]_net_1 ), .C(
        \data_rate_0/un1_output_data_rate83 ), .Y(
        \data_rate_0/bit_index_n2 ));
    CLKINT \two_mhz_clock_0/clock_out_RNIJP22  (.A(
        \two_mhz_clock_0/clock_out_i ), .Y(two_mhz_clock_output_pin));
    AND3 \ten_mhz_clock_0/un5_counter_1_I_22  (.A(
        \ten_mhz_clock_0/DWACT_FINC_E[0] ), .B(
        \ten_mhz_clock_0/DWACT_FINC_E[2] ), .C(
        \ten_mhz_clock_0/DWACT_FINC_E[3] ), .Y(\ten_mhz_clock_0/N_5 ));
    AX1C \ten_mhz_clock_0/un5_counter_1_I_7  (.A(
        \ten_mhz_clock_0/counter[1]_net_1 ), .B(
        \ten_mhz_clock_0/counter[0]_net_1 ), .C(
        \ten_mhz_clock_0/counter[2]_net_1 ), .Y(
        \ten_mhz_clock_0/I_7_0 ));
    DFN1C0 \data_rate_0/counter[3]  (.D(\data_rate_0/counter_n3 ), 
        .CLK(two_mhz_clock_output_pin), .CLR(reset_c), .Q(
        \data_rate_0/counter[3]_net_1 ));
    AND3 \two_mhz_clock_0/un5_counter_I_8  (.A(
        \two_mhz_clock_0/counter[0]_net_1 ), .B(
        \two_mhz_clock_0/counter[1]_net_1 ), .C(
        \two_mhz_clock_0/counter[2]_net_1 ), .Y(\two_mhz_clock_0/N_10 )
        );
    DFN1C0 \modulator_0/clock_counter[1]  (.D(
        \modulator_0/clock_counter_n1 ), .CLK(
        ten_mhz_clock_0_clock_out), .CLR(reset_c), .Q(
        \modulator_0/clock_counter[1]_net_1 ));
    XA1 \modulator_0/clock_counter_RNO[13]  (.A(
        \modulator_0/clock_counter[13]_net_1 ), .B(
        \modulator_0/clock_counter_c12 ), .C(trigger_signal_c), .Y(
        \modulator_0/clock_counter_n13 ));
    NOR3C \data_rate_0/output_data_rate_RNO_14  (.A(
        \data_rate_0/bit_index[1]_net_1 ), .B(
        \data_rate_0/data[6]_net_1 ), .C(
        \data_rate_0/bit_index[0]_net_1 ), .Y(
        \data_rate_0/output_data_rate_1_sqmuxa_3_2 ));
    AND3 \two_mhz_clock_0/un5_counter_I_10  (.A(
        \two_mhz_clock_0/counter[0]_net_1 ), .B(
        \two_mhz_clock_0/counter[1]_net_1 ), .C(
        \two_mhz_clock_0/counter[2]_net_1 ), .Y(
        \two_mhz_clock_0/DWACT_FINC_E[0] ));
    NOR3A \data_rate_0/output_data_rate_RNO_5  (.A(
        \data_rate_0/output_data_rate_1_sqmuxa_1_0 ), .B(
        \data_rate_0/bit_index[2]_net_1 ), .C(
        \data_rate_0/bit_index[1]_net_1 ), .Y(
        \data_rate_0/output_data_rate_1_sqmuxa ));
    NOR2A \data_rate_0/output_data_rate_RNO  (.A(
        modulator_0_output_signal), .B(output_data_rate), .Y(
        \data_rate_0/output_data_rate_25 ));
    XA1 \modulator_0/clock_counter_RNO[6]  (.A(
        \modulator_0/clock_counter[6]_net_1 ), .B(
        \modulator_0/clock_counter_c5 ), .C(trigger_signal_c), .Y(
        \modulator_0/clock_counter_n6 ));
    MX2 \data_rate_0/packet_start_flag_RNIOJ5E7  (.A(
        \data_rate_0/bit_index21 ), .B(
        \data_rate_0/packet_start_flag6 ), .S(
        \data_rate_0/packet_start_flag_net_1 ), .Y(
        \data_rate_0/un1_bit_index21[0] ));
    DFN1C0 \two_mhz_clock_0/counter[11]  (.D(\two_mhz_clock_0/I_32_0 ), 
        .CLK(GLA), .CLR(reset_c), .Q(
        \two_mhz_clock_0/counter[11]_net_1 ));
    DFN1C0 \two_mhz_clock_0/counter[9]  (.D(\two_mhz_clock_0/I_26_0 ), 
        .CLK(GLA), .CLR(reset_c), .Q(
        \two_mhz_clock_0/counter[9]_net_1 ));
    AO1 OR2_0 (.A(ref_signal_c), .B(output_data_rate), .C(AND2_1_Y), 
        .Y(data_path_signal));
    OR2 \modulator_0/output_signal_RNO_13  (.A(
        \modulator_0/clock_counter[0]_net_1 ), .B(
        \modulator_0/un3lto3 ), .Y(\modulator_0/un4lt4_1 ));
    DFN1C0 \modulator_0/clock_counter[11]  (.D(
        \modulator_0/clock_counter_n11 ), .CLK(
        ten_mhz_clock_0_clock_out), .CLR(reset_c), .Q(
        \modulator_0/un4lto11 ));
    XA1B \data_rate_0/bit_index_RNO[1]  (.A(
        \data_rate_0/bit_index[1]_net_1 ), .B(
        \data_rate_0/bit_index[0]_net_1 ), .C(
        \data_rate_0/un1_output_data_rate83 ), .Y(
        \data_rate_0/bit_index_n1 ));
    AND3 \ten_mhz_clock_0/un5_counter_1_I_30  (.A(
        \ten_mhz_clock_0/DWACT_FINC_E[0] ), .B(
        \ten_mhz_clock_0/DWACT_FINC_E[2] ), .C(
        \ten_mhz_clock_0/DWACT_FINC_E[5] ), .Y(
        \ten_mhz_clock_0/DWACT_FINC_E[6] ));
    XOR2 \main_clock_0/un5_counter_1_I_17  (.A(\main_clock_0/N_3 ), .B(
        \main_clock_0/counter[6]_net_1 ), .Y(\main_clock_0/I_17 ));
    AND3 \two_mhz_clock_0/un5_counter_I_18  (.A(
        \two_mhz_clock_0/counter[3]_net_1 ), .B(
        \two_mhz_clock_0/counter[4]_net_1 ), .C(
        \two_mhz_clock_0/counter[5]_net_1 ), .Y(
        \two_mhz_clock_0/DWACT_FINC_E[2] ));
    NOR3A \ten_mhz_clock_0/counter_RNI7K02[6]  (.A(
        \ten_mhz_clock_0/counter14_4 ), .B(
        \ten_mhz_clock_0/counter[6]_net_1 ), .C(
        \ten_mhz_clock_0/counter[8]_net_1 ), .Y(
        \ten_mhz_clock_0/counter14_7 ));
    INV AFLSDF_INV_0 (.A(modulator_0_output_signal), .Y(
        AFLSDF_INV_0_net_1));
    AOI1 \ten_mhz_clock_0/counter_RNO[0]  (.A(
        \ten_mhz_clock_0/counter14_8 ), .B(
        \ten_mhz_clock_0/counter14_7 ), .C(
        \ten_mhz_clock_0/counter[0]_net_1 ), .Y(
        \ten_mhz_clock_0/counter_3[0] ));
    OA1 \modulator_0/output_signal_RNO_4  (.A(\modulator_0/un4lto10 ), 
        .B(\modulator_0/un4lt10 ), .C(\modulator_0/un4lto11 ), .Y(
        \modulator_0/un4lt12 ));
    DFN1C0 \modulator_0/clock_counter[3]  (.D(
        \modulator_0/clock_counter_n3 ), .CLK(
        ten_mhz_clock_0_clock_out), .CLR(reset_c), .Q(
        \modulator_0/un3lto3 ));
    DFN1C0 \data_rate_0/data[9]  (.D(\data_in_c[9] ), .CLK(
        modulator_0_output_signal), .CLR(reset_c), .Q(
        \data_rate_0/data[9]_net_1 ));
    CLKINT \ten_mhz_clock_0/clock_out_RNI0542  (.A(
        \ten_mhz_clock_0/clock_out_i ), .Y(ten_mhz_clock_0_clock_out));
    AND3 \main_clock_0/un5_counter_1_I_10  (.A(
        \main_clock_0/counter[0]_net_1 ), .B(
        \main_clock_0/counter[1]_net_1 ), .C(
        \main_clock_0/counter[2]_net_1 ), .Y(
        \main_clock_0/DWACT_FINC_E[0] ));
    NOR3C \data_rate_0/output_data_rate_RNO_0  (.A(
        \data_rate_0/output_data_rate_1_sqmuxa_10_8 ), .B(
        \data_rate_0/output_data_rate_1_sqmuxa_10_7 ), .C(
        modulator_0_output_signal), .Y(
        \data_rate_0/output_data_rate_1_sqmuxa_10 ));
    AND3 \ten_mhz_clock_0/un5_counter_1_I_8  (.A(
        \ten_mhz_clock_0/counter[0]_net_1 ), .B(
        \ten_mhz_clock_0/counter[1]_net_1 ), .C(
        \ten_mhz_clock_0/counter[2]_net_1 ), .Y(\ten_mhz_clock_0/N_10 )
        );
    DFN1C0 \ten_mhz_clock_0/counter[9]  (.D(\ten_mhz_clock_0/I_26 ), 
        .CLK(GLA), .CLR(reset_c), .Q(
        \ten_mhz_clock_0/counter[9]_net_1 ));
    AND2 \two_mhz_clock_0/un5_counter_I_15  (.A(
        \two_mhz_clock_0/counter[3]_net_1 ), .B(
        \two_mhz_clock_0/counter[4]_net_1 ), .Y(
        \two_mhz_clock_0/DWACT_FINC_E[1] ));
    AOI1B \two_mhz_clock_0/counter_RNO[1]  (.A(
        \two_mhz_clock_0/counter14_9 ), .B(
        \two_mhz_clock_0/counter14_8 ), .C(\two_mhz_clock_0/I_5_1 ), 
        .Y(\two_mhz_clock_0/counter_3[1] ));
    AND3 \two_mhz_clock_0/un5_counter_I_19  (.A(
        \two_mhz_clock_0/DWACT_FINC_E[0] ), .B(
        \two_mhz_clock_0/DWACT_FINC_E[2] ), .C(
        \two_mhz_clock_0/counter[6]_net_1 ), .Y(\two_mhz_clock_0/N_6 ));
    DFN1C0 \ten_mhz_clock_0/counter[5]  (.D(\ten_mhz_clock_0/I_14_0 ), 
        .CLK(GLA), .CLR(reset_c), .Q(
        \ten_mhz_clock_0/counter[5]_net_1 ));
    OA1 \modulator_0/output_signal_RNO_9  (.A(\modulator_0/un4lt8 ), 
        .B(\modulator_0/un4lto8_0 ), .C(\modulator_0/un4lto9 ), .Y(
        \modulator_0/un4lt10 ));
    DFN1C0 \modulator_0/clock_counter[12]  (.D(
        \modulator_0/clock_counter_n12 ), .CLK(
        ten_mhz_clock_0_clock_out), .CLR(reset_c), .Q(
        \modulator_0/un4lto12 ));
    DFN1C0 \data_rate_0/data[6]  (.D(\data_in_c[6] ), .CLK(
        modulator_0_output_signal), .CLR(reset_c), .Q(
        \data_rate_0/data[6]_net_1 ));
    NOR2 \data_rate_0/counter_RNIPVQS[2]  (.A(
        \data_rate_0/counter[3]_net_1 ), .B(
        \data_rate_0/counter[2]_net_1 ), .Y(
        \data_rate_0/bit_index21_0 ));
    IOTRI_OB_EB \RSS_EN_pad/U0/U1  (.D(VCC), .E(VCC), .DOUT(
        \RSS_EN_pad/U0/NET1 ), .EOUT(\RSS_EN_pad/U0/NET2 ));
    XA1 \modulator_0/clock_counter_RNO[1]  (.A(
        \modulator_0/clock_counter[0]_net_1 ), .B(
        \modulator_0/clock_counter[1]_net_1 ), .C(trigger_signal_c), 
        .Y(\modulator_0/clock_counter_n1 ));
    IOPAD_IN \trigger_signal_pad/U0/U0  (.PAD(trigger_signal), .Y(
        \trigger_signal_pad/U0/NET1 ));
    IOIN_IB \data_in_pad[5]/U0/U1  (.YIN(\data_in_pad[5]/U0/NET1 ), .Y(
        \data_in_c[5] ));
    AX1C \modulator_0/clock_counter_RNO[15]  (.A(
        \modulator_0/clock_counter_c13 ), .B(
        \modulator_0/clock_counter_33_0 ), .C(\modulator_0/N_69 ), .Y(
        \modulator_0/clock_counter_n15 ));
    NOR2 \main_clock_0/counter_RNIF4VS[1]  (.A(
        \main_clock_0/counter[4]_net_1 ), .B(
        \main_clock_0/counter[1]_net_1 ), .Y(
        \main_clock_0/counter14_2 ));
    OR2 \modulator_0/output_signal_RNO_8  (.A(\modulator_0/un4lto11 ), 
        .B(\modulator_0/un4lto10 ), .Y(\modulator_0/un3lto11_0 ));
    DFN1C0 \modulator_0/clock_counter[5]  (.D(
        \modulator_0/clock_counter_n5 ), .CLK(
        ten_mhz_clock_0_clock_out), .CLR(reset_c), .Q(
        \modulator_0/un3lto5 ));
    DFN1C0 \ten_mhz_clock_0/counter[8]  (.D(\ten_mhz_clock_0/I_23 ), 
        .CLK(GLA), .CLR(reset_c), .Q(
        \ten_mhz_clock_0/counter[8]_net_1 ));
    DFN1C0 \modulator_0/clock_counter[8]  (.D(
        \modulator_0/clock_counter_n8 ), .CLK(
        ten_mhz_clock_0_clock_out), .CLR(reset_c), .Q(
        \modulator_0/clock_counter[8]_net_1 ));
    AND3 \two_mhz_clock_0/un5_counter_I_30  (.A(
        \two_mhz_clock_0/DWACT_FINC_E[0] ), .B(
        \two_mhz_clock_0/DWACT_FINC_E[2] ), .C(
        \two_mhz_clock_0/DWACT_FINC_E[5] ), .Y(
        \two_mhz_clock_0/DWACT_FINC_E[6] ));
    AND3 \two_mhz_clock_0/un5_counter_I_16  (.A(
        \two_mhz_clock_0/DWACT_FINC_E[0] ), .B(
        \two_mhz_clock_0/DWACT_FINC_E[1] ), .C(
        \two_mhz_clock_0/counter[5]_net_1 ), .Y(\two_mhz_clock_0/N_7 ));
    DFN1C0 \two_mhz_clock_0/counter[6]  (.D(\two_mhz_clock_0/I_17_1 ), 
        .CLK(GLA), .CLR(reset_c), .Q(
        \two_mhz_clock_0/counter[6]_net_1 ));
    NOR3A \data_rate_0/counter_RNIUBMP1[7]  (.A(
        \data_rate_0/bit_index21_2 ), .B(
        \data_rate_0/counter[6]_net_1 ), .C(
        \data_rate_0/counter[7]_net_1 ), .Y(
        \data_rate_0/bit_index21_4_0 ));
    AND2A AND2_3 (.A(modulator_0_output_signal), .B(ref_signal_c), .Y(
        AND2_3_Y));
    XOR2 \ten_mhz_clock_0/un5_counter_1_I_17  (.A(
        \ten_mhz_clock_0/N_7 ), .B(\ten_mhz_clock_0/counter[6]_net_1 ), 
        .Y(\ten_mhz_clock_0/I_17_0 ));
    DFN1C0 \data_rate_0/counter[1]  (.D(\data_rate_0/counter_n1 ), 
        .CLK(two_mhz_clock_output_pin), .CLR(reset_c), .Q(
        \data_rate_0/counter[1]_net_1 ));
    AND3 \ten_mhz_clock_0/un5_counter_1_I_16  (.A(
        \ten_mhz_clock_0/DWACT_FINC_E[0] ), .B(
        \ten_mhz_clock_0/DWACT_FINC_E[1] ), .C(
        \ten_mhz_clock_0/counter[5]_net_1 ), .Y(\ten_mhz_clock_0/N_7 ));
    NOR2 \ten_mhz_clock_0/counter_RNIF501[1]  (.A(
        \ten_mhz_clock_0/counter[4]_net_1 ), .B(
        \ten_mhz_clock_0/counter[1]_net_1 ), .Y(
        \ten_mhz_clock_0/counter14_4 ));
    NOR2B \modulator_0/clock_counter_RNI2305[3]  (.A(
        \modulator_0/clock_counter_c2 ), .B(\modulator_0/un3lto3 ), .Y(
        \modulator_0/clock_counter_c3 ));
    NOR2B \modulator_0/clock_counter_RNIFVF2[1]  (.A(
        \modulator_0/clock_counter[0]_net_1 ), .B(
        \modulator_0/clock_counter[1]_net_1 ), .Y(
        \modulator_0/clock_counter_c1 ));
    DFN1C0 \two_mhz_clock_0/counter[8]  (.D(\two_mhz_clock_0/I_23_0 ), 
        .CLK(GLA), .CLR(reset_c), .Q(
        \two_mhz_clock_0/counter[8]_net_1 ));
    AND2 \main_clock_0/un5_counter_1_I_15  (.A(
        \main_clock_0/counter[3]_net_1 ), .B(
        \main_clock_0/counter[4]_net_1 ), .Y(
        \main_clock_0/DWACT_FINC_E[1] ));
    AND3 \two_mhz_clock_0/un5_counter_I_22  (.A(
        \two_mhz_clock_0/DWACT_FINC_E[0] ), .B(
        \two_mhz_clock_0/DWACT_FINC_E[2] ), .C(
        \two_mhz_clock_0/DWACT_FINC_E[3] ), .Y(\two_mhz_clock_0/N_5 ));
    NOR2B \modulator_0/clock_counter_RNO_0[15]  (.A(trigger_signal_c), 
        .B(\modulator_0/clock_counter[14]_net_1 ), .Y(
        \modulator_0/clock_counter_33_0 ));
    IOPAD_IN \data_in_pad[1]/U0/U0  (.PAD(data_in[1]), .Y(
        \data_in_pad[1]/U0/NET1 ));
    AND3 \two_mhz_clock_0/un5_counter_I_27  (.A(
        \two_mhz_clock_0/DWACT_FINC_E[4] ), .B(
        \two_mhz_clock_0/counter[8]_net_1 ), .C(
        \two_mhz_clock_0/counter[9]_net_1 ), .Y(\two_mhz_clock_0/N_3 ));
    AX1C \main_clock_0/un5_counter_1_I_12  (.A(
        \main_clock_0/counter[3]_net_1 ), .B(
        \main_clock_0/DWACT_FINC_E[0] ), .C(
        \main_clock_0/counter[4]_net_1 ), .Y(\main_clock_0/I_12 ));
    IOPAD_IN \data_in_pad[2]/U0/U0  (.PAD(data_in[2]), .Y(
        \data_in_pad[2]/U0/NET1 ));
    AX1C \two_mhz_clock_0/un5_counter_I_7  (.A(
        \two_mhz_clock_0/counter[1]_net_1 ), .B(
        \two_mhz_clock_0/counter[0]_net_1 ), .C(
        \two_mhz_clock_0/counter[2]_net_1 ), .Y(
        \two_mhz_clock_0/I_7_1 ));
    NOR2A \ten_mhz_clock_0/counter_RNIH701[2]  (.A(
        \ten_mhz_clock_0/counter[2]_net_1 ), .B(
        \ten_mhz_clock_0/counter[5]_net_1 ), .Y(
        \ten_mhz_clock_0/counter14_2 ));
    IOPAD_TRI \signal_into_switch_pad/U0/U0  (.D(
        \signal_into_switch_pad/U0/NET1 ), .E(
        \signal_into_switch_pad/U0/NET2 ), .PAD(signal_into_switch));
    AX1C \main_clock_0/un5_counter_1_I_7  (.A(
        \main_clock_0/counter[1]_net_1 ), .B(
        \main_clock_0/counter[0]_net_1 ), .C(
        \main_clock_0/counter[2]_net_1 ), .Y(\main_clock_0/I_7 ));
    DFN1C0 \modulator_0/clock_counter[14]  (.D(
        \modulator_0/clock_counter_n14 ), .CLK(
        ten_mhz_clock_0_clock_out), .CLR(reset_c), .Q(
        \modulator_0/clock_counter[14]_net_1 ));
    NOR2 \two_mhz_clock_0/counter_RNIUT6U[6]  (.A(
        \two_mhz_clock_0/counter[8]_net_1 ), .B(
        \two_mhz_clock_0/counter[6]_net_1 ), .Y(
        \two_mhz_clock_0/counter14_3 ));
    DFN1C0 \main_clock_0/clock_out  (.D(
        \main_clock_0/clock_out_RNO_net_1 ), .CLK(GLA), .CLR(reset_c), 
        .Q(ref_signal_c));
    NOR3C \data_rate_0/counter_RNO_1[7]  (.A(
        \data_rate_0/counter[5]_net_1 ), .B(\data_rate_0/counter_c4 ), 
        .C(\data_rate_0/counter[6]_net_1 ), .Y(
        \data_rate_0/counter_15_0 ));
    AND3 \ten_mhz_clock_0/un5_counter_1_I_19  (.A(
        \ten_mhz_clock_0/DWACT_FINC_E[0] ), .B(
        \ten_mhz_clock_0/DWACT_FINC_E[2] ), .C(
        \ten_mhz_clock_0/counter[6]_net_1 ), .Y(\ten_mhz_clock_0/N_6 ));
    AOI1B \two_mhz_clock_0/counter_RNO[5]  (.A(
        \two_mhz_clock_0/counter14_9 ), .B(
        \two_mhz_clock_0/counter14_8 ), .C(\two_mhz_clock_0/I_14_1 ), 
        .Y(\two_mhz_clock_0/counter_3[5] ));
    IOTRI_OB_EB \signal_into_switch_pad/U0/U1  (.D(
        signal_into_switch_c), .E(VCC), .DOUT(
        \signal_into_switch_pad/U0/NET1 ), .EOUT(
        \signal_into_switch_pad/U0/NET2 ));
    XOR2 \two_mhz_clock_0/un5_counter_I_14  (.A(\two_mhz_clock_0/N_8 ), 
        .B(\two_mhz_clock_0/counter[5]_net_1 ), .Y(
        \two_mhz_clock_0/I_14_1 ));
    DFN1C0 \main_clock_0/counter[7]  (.D(\main_clock_0/I_20 ), .CLK(
        GLA), .CLR(reset_c), .Q(\main_clock_0/counter[7]_net_1 ));
    DFN1C0 \main_clock_0/counter[0]  (.D(\main_clock_0/counter_3[0] ), 
        .CLK(GLA), .CLR(reset_c), .Q(\main_clock_0/counter[0]_net_1 ));
    NOR3B \data_rate_0/output_data_rate_RNO_20  (.A(
        \data_rate_0/data[0]_net_1 ), .B(
        \data_rate_0/bit_index[3]_net_1 ), .C(
        \data_rate_0/bit_index[1]_net_1 ), .Y(
        \data_rate_0/output_data_rate_1_sqmuxa_9_2 ));
    AND3 \ten_mhz_clock_0/un5_counter_1_I_10  (.A(
        \ten_mhz_clock_0/counter[0]_net_1 ), .B(
        \ten_mhz_clock_0/counter[1]_net_1 ), .C(
        \ten_mhz_clock_0/counter[2]_net_1 ), .Y(
        \ten_mhz_clock_0/DWACT_FINC_E[0] ));
    DFN1C0 \data_rate_0/data[4]  (.D(\data_in_c[4] ), .CLK(
        modulator_0_output_signal), .CLR(reset_c), .Q(
        \data_rate_0/data[4]_net_1 ));
    AND2 \ten_mhz_clock_0/un5_counter_1_I_15  (.A(
        \ten_mhz_clock_0/counter[3]_net_1 ), .B(
        \ten_mhz_clock_0/counter[4]_net_1 ), .Y(
        \ten_mhz_clock_0/DWACT_FINC_E[1] ));
    NOR2B \modulator_0/output_signal_RNO_10  (.A(
        \modulator_0/clock_counter[7]_net_1 ), .B(
        \modulator_0/clock_counter[6]_net_1 ), .Y(
        \modulator_0/un3lto9_1 ));
    XOR2 \ten_mhz_clock_0/un5_counter_1_I_14  (.A(
        \ten_mhz_clock_0/N_8 ), .B(\ten_mhz_clock_0/counter[5]_net_1 ), 
        .Y(\ten_mhz_clock_0/I_14_0 ));
    NOR2A \data_rate_0/bit_index_RNI51NA[3]  (.A(
        \data_rate_0/bit_index[2]_net_1 ), .B(
        \data_rate_0/bit_index[3]_net_1 ), .Y(
        \data_rate_0/output_data_rate_1_sqmuxa_7_1 ));
    IOPAD_IN \data_in_pad[8]/U0/U0  (.PAD(data_in[8]), .Y(
        \data_in_pad[8]/U0/NET1 ));
    PLLBA \pll_core_0/Core  (.CLKA(clock_c), .EXTFB(GND), .POWERDOWN(
        VCC), .GLA(GLA), .LOCK(), .GLB(), .YB(), .GLC(), .YC(), 
        .OADIV0(GND), .OADIV1(GND), .OADIV2(GND), .OADIV3(GND), 
        .OADIV4(GND), .OAMUX0(GND), .OAMUX1(GND), .OAMUX2(VCC), 
        .DLYGLA0(GND), .DLYGLA1(GND), .DLYGLA2(GND), .DLYGLA3(GND), 
        .DLYGLA4(GND), .OBDIV0(AFLSDF_GND), .OBDIV1(AFLSDF_GND), 
        .OBDIV2(AFLSDF_GND), .OBDIV3(AFLSDF_GND), .OBDIV4(AFLSDF_GND), 
        .OBMUX0(AFLSDF_GND), .OBMUX1(AFLSDF_GND), .OBMUX2(AFLSDF_GND), 
        .DLYYB0(AFLSDF_GND), .DLYYB1(AFLSDF_GND), .DLYYB2(AFLSDF_GND), 
        .DLYYB3(AFLSDF_GND), .DLYYB4(AFLSDF_GND), .DLYGLB0(AFLSDF_GND), 
        .DLYGLB1(AFLSDF_GND), .DLYGLB2(AFLSDF_GND), .DLYGLB3(
        AFLSDF_GND), .DLYGLB4(AFLSDF_GND), .OCDIV0(AFLSDF_GND), 
        .OCDIV1(AFLSDF_GND), .OCDIV2(AFLSDF_GND), .OCDIV3(AFLSDF_GND), 
        .OCDIV4(AFLSDF_GND), .OCMUX0(AFLSDF_GND), .OCMUX1(AFLSDF_GND), 
        .OCMUX2(AFLSDF_GND), .DLYYC0(AFLSDF_GND), .DLYYC1(AFLSDF_GND), 
        .DLYYC2(AFLSDF_GND), .DLYYC3(AFLSDF_GND), .DLYYC4(AFLSDF_GND), 
        .DLYGLC0(AFLSDF_GND), .DLYGLC1(AFLSDF_GND), .DLYGLC2(
        AFLSDF_GND), .DLYGLC3(AFLSDF_GND), .DLYGLC4(AFLSDF_GND), 
        .FINDIV0(VCC), .FINDIV1(VCC), .FINDIV2(GND), .FINDIV3(GND), 
        .FINDIV4(GND), .FINDIV5(GND), .FINDIV6(GND), .FBDIV0(VCC), 
        .FBDIV1(VCC), .FBDIV2(GND), .FBDIV3(GND), .FBDIV4(VCC), 
        .FBDIV5(GND), .FBDIV6(GND), .FBDLY0(GND), .FBDLY1(GND), 
        .FBDLY2(GND), .FBDLY3(GND), .FBDLY4(GND), .FBSEL0(VCC), 
        .FBSEL1(GND), .XDLYSEL(GND), .VCOSEL0(GND), .VCOSEL1(GND), 
        .VCOSEL2(VCC));
    AOI1 \data_rate_0/output_data_rate_RNO_3  (.A(
        \data_rate_0/output_data_rate_1_sqmuxa_2_2 ), .B(
        \data_rate_0/output_data_rate_1_sqmuxa_3_1 ), .C(
        \data_rate_0/packet_start_flag_net_1 ), .Y(
        \data_rate_0/output_data_rate_1_sqmuxa_10_0 ));
    NOR3C \modulator_0/output_signal_RNO_6  (.A(
        \modulator_0/clock_counter[8]_net_1 ), .B(
        \modulator_0/un4lto9 ), .C(\modulator_0/un3lto9_1 ), .Y(
        \modulator_0/un3lto9_2 ));
    NOR2 \two_mhz_clock_0/counter_RNIJDL4[11]  (.A(
        \two_mhz_clock_0/counter[11]_net_1 ), .B(
        \two_mhz_clock_0/counter[10]_net_1 ), .Y(
        \two_mhz_clock_0/counter14_0 ));
    NOR2 \two_mhz_clock_0/counter_RNI007U[7]  (.A(
        \two_mhz_clock_0/counter[9]_net_1 ), .B(
        \two_mhz_clock_0/counter[7]_net_1 ), .Y(
        \two_mhz_clock_0/counter14_1 ));
    NOR2B \data_rate_0/counter_RNO[4]  (.A(
        \data_rate_0/bit_index_1_sqmuxa_1 ), .B(
        \data_rate_0/counter_n4_tz ), .Y(\data_rate_0/counter_n4 ));
    DFN1C0 \main_clock_0/counter[4]  (.D(\main_clock_0/I_12 ), .CLK(
        GLA), .CLR(reset_c), .Q(\main_clock_0/counter[4]_net_1 ));
    XOR2 \ten_mhz_clock_0/un5_counter_1_I_28  (.A(
        \ten_mhz_clock_0/N_3 ), .B(\ten_mhz_clock_0/counter[10]_net_1 )
        , .Y(\ten_mhz_clock_0/I_28 ));
    XA1 \modulator_0/clock_counter_RNO[11]  (.A(\modulator_0/un4lto11 )
        , .B(\modulator_0/clock_counter_c10 ), .C(trigger_signal_c), 
        .Y(\modulator_0/clock_counter_n11 ));
    NOR2B \modulator_0/clock_counter_RNI3U8B[8]  (.A(
        \modulator_0/clock_counter_c7 ), .B(
        \modulator_0/clock_counter[8]_net_1 ), .Y(
        \modulator_0/clock_counter_c8 ));
    DFN1C0 \data_rate_0/counter[5]  (.D(\data_rate_0/counter_n5 ), 
        .CLK(two_mhz_clock_output_pin), .CLR(reset_c), .Q(
        \data_rate_0/counter[5]_net_1 ));
    DFN1C0 \two_mhz_clock_0/counter[10]  (.D(\two_mhz_clock_0/I_28_0 ), 
        .CLK(GLA), .CLR(reset_c), .Q(
        \two_mhz_clock_0/counter[10]_net_1 ));
    NOR2A \data_rate_0/packet_start_flag_RNIQDMR7  (.A(
        modulator_0_output_signal), .B(
        \data_rate_0/un1_bit_index21[0] ), .Y(
        \data_rate_0/bit_index_1_sqmuxa_1 ));
    DFN1C0 \data_rate_0/data[3]  (.D(\data_in_c[3] ), .CLK(
        modulator_0_output_signal), .CLR(reset_c), .Q(
        \data_rate_0/data[3]_net_1 ));
    NOR2B \modulator_0/clock_counter_RNIB3OL[10]  (.A(
        \modulator_0/clock_counter_c9 ), .B(\modulator_0/un4lto10 ), 
        .Y(\modulator_0/clock_counter_c10 ));
    XA1 \data_rate_0/counter_RNO[7]  (.A(\data_rate_0/counter_15_0 ), 
        .B(\data_rate_0/counter[7]_net_1 ), .C(
        \data_rate_0/bit_index_1_sqmuxa_1 ), .Y(
        \data_rate_0/counter_n7 ));
    IOPAD_IN \data_in_pad[7]/U0/U0  (.PAD(data_in[7]), .Y(
        \data_in_pad[7]/U0/NET1 ));
    AND3 \two_mhz_clock_0/un5_counter_I_13  (.A(
        \two_mhz_clock_0/DWACT_FINC_E[0] ), .B(
        \two_mhz_clock_0/counter[3]_net_1 ), .C(
        \two_mhz_clock_0/counter[4]_net_1 ), .Y(\two_mhz_clock_0/N_8 ));
    XOR2 \ten_mhz_clock_0/un5_counter_1_I_32  (.A(
        \ten_mhz_clock_0/N_2 ), .B(\ten_mhz_clock_0/counter[11]_net_1 )
        , .Y(\ten_mhz_clock_0/I_32 ));
    AOI1B \data_rate_0/packet_start_flag_RNO  (.A(
        \data_rate_0/packet_start_flag6 ), .B(
        \data_rate_0/packet_start_flag_net_1 ), .C(
        modulator_0_output_signal), .Y(
        \data_rate_0/packet_start_flag_1_sqmuxa ));
    AO1 \modulator_0/output_signal_RNO_7  (.A(\modulator_0/un3lto3 ), 
        .B(\modulator_0/un3lto4 ), .C(\modulator_0/un3lto5 ), .Y(
        \modulator_0/un3lt9 ));
    NOR2B \modulator_0/clock_counter_RNI6GO8[6]  (.A(
        \modulator_0/clock_counter_c5 ), .B(
        \modulator_0/clock_counter[6]_net_1 ), .Y(
        \modulator_0/clock_counter_c6 ));
    DFN1C0 \main_clock_0/counter[2]  (.D(\main_clock_0/I_7 ), .CLK(GLA)
        , .CLR(reset_c), .Q(\main_clock_0/counter[2]_net_1 ));
    AX1C \ten_mhz_clock_0/clock_out_RNO  (.A(
        \ten_mhz_clock_0/counter14_7 ), .B(
        \ten_mhz_clock_0/counter14_8 ), .C(
        \ten_mhz_clock_0/clock_out_i ), .Y(
        \ten_mhz_clock_0/clock_out_RNO_0 ));
    DFN1C0 \data_rate_0/counter[0]  (.D(\data_rate_0/counter_n0 ), 
        .CLK(two_mhz_clock_output_pin), .CLR(reset_c), .Q(
        \data_rate_0/counter[0]_net_1 ));
    DFN1C0 \ten_mhz_clock_0/counter[10]  (.D(\ten_mhz_clock_0/I_28 ), 
        .CLK(GLA), .CLR(reset_c), .Q(
        \ten_mhz_clock_0/counter[10]_net_1 ));
    OR2A \data_rate_0/packet_start_flag_RNI8TBA1  (.A(
        modulator_0_output_signal), .B(
        \data_rate_0/un1_output_data_rate83_0 ), .Y(
        \data_rate_0/un1_output_data_rate83 ));
    IOPAD_IN \data_in_pad[0]/U0/U0  (.PAD(data_in[0]), .Y(
        \data_in_pad[0]/U0/NET1 ));
    DFN1C0 \data_rate_0/data[8]  (.D(\data_in_c[8] ), .CLK(
        modulator_0_output_signal), .CLR(reset_c), .Q(
        \data_rate_0/data[8]_net_1 ));
    NOR3C \data_rate_0/counter_RNIC7CJ3[3]  (.A(
        \data_rate_0/counter[3]_net_1 ), .B(\data_rate_0/counter_c2 ), 
        .C(\data_rate_0/bit_index21_4_0 ), .Y(
        \data_rate_0/packet_start_flag6 ));
    XOR2 \main_clock_0/un5_counter_1_I_14  (.A(\main_clock_0/N_4 ), .B(
        \main_clock_0/counter[5]_net_1 ), .Y(\main_clock_0/I_14 ));
    NOR2B \data_rate_0/counter_RNO[2]  (.A(
        \data_rate_0/bit_index_1_sqmuxa_1 ), .B(
        \data_rate_0/counter_n2_tz ), .Y(\data_rate_0/counter_n2 ));
    NOR3A \data_rate_0/output_data_rate_RNO_8  (.A(
        \data_rate_0/output_data_rate_1_sqmuxa_8_1 ), .B(
        \data_rate_0/bit_index[0]_net_1 ), .C(
        \data_rate_0/bit_index[1]_net_1 ), .Y(
        \data_rate_0/output_data_rate_1_sqmuxa_8 ));
    DFN1C0 \two_mhz_clock_0/clock_out  (.D(
        \two_mhz_clock_0/clock_out_RNO_1 ), .CLK(GLA), .CLR(reset_c), 
        .Q(\two_mhz_clock_0/clock_out_i ));
    DFN1C0 \modulator_0/clock_counter[10]  (.D(
        \modulator_0/clock_counter_n10 ), .CLK(
        ten_mhz_clock_0_clock_out), .CLR(reset_c), .Q(
        \modulator_0/un4lto10 ));
    AO1 \modulator_0/output_signal_RNO_2  (.A(\modulator_0/un3lto9_2 ), 
        .B(\modulator_0/un3lt9 ), .C(\modulator_0/un3lto11_0 ), .Y(
        \modulator_0/un3lt12 ));
    NOR2B \modulator_0/clock_counter_RNIKM0A[7]  (.A(
        \modulator_0/clock_counter_c6 ), .B(
        \modulator_0/clock_counter[7]_net_1 ), .Y(
        \modulator_0/clock_counter_c7 ));
    NOR3B \data_rate_0/output_data_rate_RNO_19  (.A(
        \data_rate_0/bit_index[1]_net_1 ), .B(
        \data_rate_0/data[3]_net_1 ), .C(
        \data_rate_0/bit_index[0]_net_1 ), .Y(
        \data_rate_0/output_data_rate_1_sqmuxa_6_2 ));
    DFN1C0 \modulator_0/clock_counter[7]  (.D(
        \modulator_0/clock_counter_n7 ), .CLK(
        ten_mhz_clock_0_clock_out), .CLR(reset_c), .Q(
        \modulator_0/clock_counter[7]_net_1 ));
    DFN1C0 \two_mhz_clock_0/counter[3]  (.D(\two_mhz_clock_0/I_9_1 ), 
        .CLK(GLA), .CLR(reset_c), .Q(
        \two_mhz_clock_0/counter[3]_net_1 ));
    XOR2 \ten_mhz_clock_0/un5_counter_1_I_9  (.A(
        \ten_mhz_clock_0/N_10 ), .B(\ten_mhz_clock_0/counter[3]_net_1 )
        , .Y(\ten_mhz_clock_0/I_9_0 ));
    AND3 \ten_mhz_clock_0/un5_counter_1_I_13  (.A(
        \ten_mhz_clock_0/DWACT_FINC_E[0] ), .B(
        \ten_mhz_clock_0/counter[3]_net_1 ), .C(
        \ten_mhz_clock_0/counter[4]_net_1 ), .Y(\ten_mhz_clock_0/N_8 ));
    NOR3B \data_rate_0/output_data_rate_RNO_11  (.A(
        \data_rate_0/bit_index[0]_net_1 ), .B(
        \data_rate_0/output_data_rate_1_sqmuxa_9_2 ), .C(
        \data_rate_0/bit_index[2]_net_1 ), .Y(
        \data_rate_0/output_data_rate_1_sqmuxa_9 ));
    DFN1C0 \modulator_0/clock_counter[6]  (.D(
        \modulator_0/clock_counter_n6 ), .CLK(
        ten_mhz_clock_0_clock_out), .CLR(reset_c), .Q(
        \modulator_0/clock_counter[6]_net_1 ));
    DFN1C0 \data_rate_0/counter[6]  (.D(\data_rate_0/counter_n6 ), 
        .CLK(two_mhz_clock_output_pin), .CLR(reset_c), .Q(
        \data_rate_0/counter[6]_net_1 ));
    NOR2B \modulator_0/clock_counter_RNID686[4]  (.A(
        \modulator_0/clock_counter_c3 ), .B(\modulator_0/un3lto4 ), .Y(
        \modulator_0/clock_counter_c4 ));
    NOR3 \main_clock_0/counter_RNIFVEB1[7]  (.A(
        \main_clock_0/counter[6]_net_1 ), .B(
        \main_clock_0/counter[7]_net_1 ), .C(
        \main_clock_0/counter[3]_net_1 ), .Y(
        \main_clock_0/counter14_3 ));
    NOR3C \data_rate_0/counter_RNIC7CJ3[1]  (.A(
        \data_rate_0/bit_index21_1 ), .B(\data_rate_0/bit_index21_0 ), 
        .C(\data_rate_0/bit_index21_4_0 ), .Y(
        \data_rate_0/bit_index21 ));
    NOR3B \data_rate_0/output_data_rate_RNO_9  (.A(
        \data_rate_0/bit_index[1]_net_1 ), .B(
        \data_rate_0/data[7]_net_1 ), .C(
        \data_rate_0/bit_index[0]_net_1 ), .Y(
        \data_rate_0/output_data_rate_1_sqmuxa_2_2 ));
    DFN1C0 \main_clock_0/counter[5]  (.D(\main_clock_0/I_14 ), .CLK(
        GLA), .CLR(reset_c), .Q(\main_clock_0/counter[5]_net_1 ));
    DFN1C0 \two_mhz_clock_0/counter[1]  (.D(
        \two_mhz_clock_0/counter_3[1] ), .CLK(GLA), .CLR(reset_c), .Q(
        \two_mhz_clock_0/counter[1]_net_1 ));
    XOR2 \ten_mhz_clock_0/un5_counter_1_I_5  (.A(
        \ten_mhz_clock_0/counter[0]_net_1 ), .B(
        \ten_mhz_clock_0/counter[1]_net_1 ), .Y(
        \ten_mhz_clock_0/I_5_0 ));
    OR3 \modulator_0/output_signal_RNO_14  (.A(
        \modulator_0/clock_counter[1]_net_1 ), .B(
        \modulator_0/clock_counter[2]_net_1 ), .C(
        \modulator_0/un3lto4 ), .Y(\modulator_0/un4lt4_2 ));
    NOR2B \modulator_0/clock_counter_RNIO0O3[2]  (.A(
        \modulator_0/clock_counter_c1 ), .B(
        \modulator_0/clock_counter[2]_net_1 ), .Y(
        \modulator_0/clock_counter_c2 ));
    DFN1C0 \modulator_0/clock_counter[0]  (.D(
        \modulator_0/clock_counter_n0 ), .CLK(
        ten_mhz_clock_0_clock_out), .CLR(reset_c), .Q(
        \modulator_0/clock_counter[0]_net_1 ));
    AX1C \data_rate_0/counter_RNO_0[6]  (.A(
        \data_rate_0/counter[5]_net_1 ), .B(\data_rate_0/counter_c4 ), 
        .C(\data_rate_0/counter[6]_net_1 ), .Y(
        \data_rate_0/counter_n6_tz ));
    NOR3A \data_rate_0/output_data_rate_RNO_7  (.A(
        \data_rate_0/output_data_rate_1_sqmuxa_1_1 ), .B(
        \data_rate_0/bit_index[2]_net_1 ), .C(
        \data_rate_0/bit_index[1]_net_1 ), .Y(
        \data_rate_0/output_data_rate_1_sqmuxa_1 ));
    XOR2 \main_clock_0/un5_counter_1_I_5  (.A(
        \main_clock_0/counter[0]_net_1 ), .B(
        \main_clock_0/counter[1]_net_1 ), .Y(\main_clock_0/I_5 ));
    NOR3C \data_rate_0/output_data_rate_RNO_12  (.A(
        \data_rate_0/output_data_rate_1_sqmuxa_7_0 ), .B(
        \data_rate_0/bit_index[0]_net_1 ), .C(
        \data_rate_0/output_data_rate_1_sqmuxa_7_1 ), .Y(
        \data_rate_0/output_data_rate_1_sqmuxa_7 ));
    DFN1C0 \two_mhz_clock_0/counter[0]  (.D(\two_mhz_clock_0/I_4 ), 
        .CLK(GLA), .CLR(reset_c), .Q(
        \two_mhz_clock_0/counter[0]_net_1 ));
    IOIN_IB \trigger_signal_pad/U0/U1  (.YIN(
        \trigger_signal_pad/U0/NET1 ), .Y(trigger_signal_c));
    AND3 \main_clock_0/un5_counter_1_I_13  (.A(
        \main_clock_0/DWACT_FINC_E[0] ), .B(
        \main_clock_0/counter[3]_net_1 ), .C(
        \main_clock_0/counter[4]_net_1 ), .Y(\main_clock_0/N_4 ));
    ULSICC_INT INT_ULSICC_INSTANCE_0 (.USTDBY(GND), .LPENA(GND));
    IOIN_IB \data_in_pad[1]/U0/U1  (.YIN(\data_in_pad[1]/U0/NET1 ), .Y(
        \data_in_c[1] ));
    NOR2B \modulator_0/clock_counter_RNO_1[15]  (.A(trigger_signal_c), 
        .B(\modulator_0/clock_counter[15]_net_1 ), .Y(
        \modulator_0/N_69 ));
    DFN1C0 \main_clock_0/counter[6]  (.D(\main_clock_0/I_17 ), .CLK(
        GLA), .CLR(reset_c), .Q(\main_clock_0/counter[6]_net_1 ));
    IOIN_IB \data_in_pad[2]/U0/U1  (.YIN(\data_in_pad[2]/U0/NET1 ), .Y(
        \data_in_c[2] ));
    AO1 OR2_1 (.A(data_path_signal), .B(modulator_0_output_signal), .C(
        AND2_3_Y), .Y(signal_into_switch_c));
    NOR2B \modulator_0/clock_counter_RNI41VU[11]  (.A(
        \modulator_0/clock_counter_c10 ), .B(\modulator_0/un4lto11 ), 
        .Y(\modulator_0/clock_counter_c11 ));
    IOPAD_IN \data_in_pad[3]/U0/U0  (.PAD(data_in[3]), .Y(
        \data_in_pad[3]/U0/NET1 ));
    NOR2 \data_rate_0/bit_index_RNI51NA_0[3]  (.A(
        \data_rate_0/bit_index[2]_net_1 ), .B(
        \data_rate_0/bit_index[3]_net_1 ), .Y(
        \data_rate_0/output_data_rate_1_sqmuxa_3_1 ));
    AOI1B \two_mhz_clock_0/counter_RNO[4]  (.A(
        \two_mhz_clock_0/counter14_9 ), .B(
        \two_mhz_clock_0/counter14_8 ), .C(\two_mhz_clock_0/I_12_1 ), 
        .Y(\two_mhz_clock_0/counter_3[4] ));
    DFN1C0 \modulator_0/clock_counter[2]  (.D(
        \modulator_0/clock_counter_n2 ), .CLK(
        ten_mhz_clock_0_clock_out), .CLR(reset_c), .Q(
        \modulator_0/clock_counter[2]_net_1 ));
    AX1C \main_clock_0/clock_out_RNO  (.A(\main_clock_0/counter14_3 ), 
        .B(\main_clock_0/counter14_4 ), .C(ref_signal_c), .Y(
        \main_clock_0/clock_out_RNO_net_1 ));
    DFN1C0 \data_rate_0/counter[2]  (.D(\data_rate_0/counter_n2 ), 
        .CLK(two_mhz_clock_output_pin), .CLR(reset_c), .Q(
        \data_rate_0/counter[2]_net_1 ));
    OA1 \modulator_0/output_signal_RNO_11  (.A(\modulator_0/un4lt4_1 ), 
        .B(\modulator_0/un4lt4_2 ), .C(\modulator_0/un4lto6_0 ), .Y(
        \modulator_0/un4lt8 ));
    NOR3B \data_rate_0/output_data_rate_RNO_1  (.A(
        \data_rate_0/output_data_rate_1_sqmuxa_10_0 ), .B(
        \data_rate_0/output_data_rate_1_sqmuxa_10_6 ), .C(
        \data_rate_0/output_data_rate_1_sqmuxa ), .Y(
        \data_rate_0/output_data_rate_1_sqmuxa_10_8 ));
    XOR2 \two_mhz_clock_0/un5_counter_I_20  (.A(\two_mhz_clock_0/N_6 ), 
        .B(\two_mhz_clock_0/counter[7]_net_1 ), .Y(
        \two_mhz_clock_0/I_20_1 ));
    NOR2 \data_rate_0/counter_RNILRQS[1]  (.A(
        \data_rate_0/counter[1]_net_1 ), .B(
        \data_rate_0/counter[0]_net_1 ), .Y(
        \data_rate_0/bit_index21_1 ));
    DFN1C0 \modulator_0/clock_counter[9]  (.D(
        \modulator_0/clock_counter_n9 ), .CLK(
        ten_mhz_clock_0_clock_out), .CLR(reset_c), .Q(
        \modulator_0/un4lto9 ));
    AX1C \ten_mhz_clock_0/un5_counter_1_I_12  (.A(
        \ten_mhz_clock_0/counter[3]_net_1 ), .B(
        \ten_mhz_clock_0/DWACT_FINC_E[0] ), .C(
        \ten_mhz_clock_0/counter[4]_net_1 ), .Y(
        \ten_mhz_clock_0/I_12_0 ));
    DFN1E0C0 \data_rate_0/bit_index[0]  (.D(\data_rate_0/N_119 ), .CLK(
        two_mhz_clock_output_pin), .CLR(reset_c), .E(
        \data_rate_0/bit_index_1_sqmuxa_1 ), .Q(
        \data_rate_0/bit_index[0]_net_1 ));
    IOIN_IB \data_in_pad[8]/U0/U1  (.YIN(\data_in_pad[8]/U0/NET1 ), .Y(
        \data_in_c[8] ));
    IOPAD_IN \data_in_pad[4]/U0/U0  (.PAD(data_in[4]), .Y(
        \data_in_pad[4]/U0/NET1 ));
    XOR2 \two_mhz_clock_0/un5_counter_I_28  (.A(\two_mhz_clock_0/N_3 ), 
        .B(\two_mhz_clock_0/counter[10]_net_1 ), .Y(
        \two_mhz_clock_0/I_28_0 ));
    DFN1C0 \modulator_0/output_signal  (.D(
        \modulator_0/output_signal_3_0_0 ), .CLK(
        ten_mhz_clock_0_clock_out), .CLR(reset_c), .Q(
        \modulator_0/output_signal_i ));
    NOR3A \data_rate_0/output_data_rate_RNO_4  (.A(
        \data_rate_0/output_data_rate_1_sqmuxa_10_1 ), .B(
        \data_rate_0/output_data_rate_1_sqmuxa_9 ), .C(
        \data_rate_0/output_data_rate_1_sqmuxa_7 ), .Y(
        \data_rate_0/output_data_rate_1_sqmuxa_10_6 ));
    IOPAD_IN \data_in_pad[9]/U0/U0  (.PAD(data_in[9]), .Y(
        \data_in_pad[9]/U0/NET1 ));
    IOPAD_IN \data_in_pad[6]/U0/U0  (.PAD(data_in[6]), .Y(
        \data_in_pad[6]/U0/NET1 ));
    IOIN_IB \data_in_pad[7]/U0/U1  (.YIN(\data_in_pad[7]/U0/NET1 ), .Y(
        \data_in_c[7] ));
    AND3 \two_mhz_clock_0/un5_counter_I_31  (.A(
        \two_mhz_clock_0/DWACT_FINC_E[6] ), .B(
        \two_mhz_clock_0/counter[9]_net_1 ), .C(
        \two_mhz_clock_0/counter[10]_net_1 ), .Y(\two_mhz_clock_0/N_2 )
        );
    DFN1C0 \modulator_0/clock_counter[4]  (.D(
        \modulator_0/clock_counter_n4 ), .CLK(
        ten_mhz_clock_0_clock_out), .CLR(reset_c), .Q(
        \modulator_0/un3lto4 ));
    XA1 \data_rate_0/counter_RNO[1]  (.A(
        \data_rate_0/counter[0]_net_1 ), .B(
        \data_rate_0/counter[1]_net_1 ), .C(
        \data_rate_0/bit_index_1_sqmuxa_1 ), .Y(
        \data_rate_0/counter_n1 ));
    NOR3C \two_mhz_clock_0/counter_RNI82AV2[11]  (.A(
        \two_mhz_clock_0/counter14_1 ), .B(
        \two_mhz_clock_0/counter14_0 ), .C(
        \two_mhz_clock_0/counter14_7 ), .Y(
        \two_mhz_clock_0/counter14_9 ));
    DFN1C0 \data_rate_0/counter[7]  (.D(\data_rate_0/counter_n7 ), 
        .CLK(two_mhz_clock_output_pin), .CLR(reset_c), .Q(
        \data_rate_0/counter[7]_net_1 ));
    NOR2B \modulator_0/clock_counter_RNIUV581[12]  (.A(
        \modulator_0/clock_counter_c11 ), .B(\modulator_0/un4lto12 ), 
        .Y(\modulator_0/clock_counter_c12 ));
    AX1C \data_rate_0/bit_index_RNO_0[3]  (.A(
        \data_rate_0/bit_index_c1 ), .B(
        \data_rate_0/bit_index[2]_net_1 ), .C(
        \data_rate_0/bit_index[3]_net_1 ), .Y(
        \data_rate_0/bit_index_n3_tz ));
    XA1 \modulator_0/clock_counter_RNO[9]  (.A(\modulator_0/un4lto9 ), 
        .B(\modulator_0/clock_counter_c8 ), .C(trigger_signal_c), .Y(
        \modulator_0/clock_counter_n9 ));
    AND3 \two_mhz_clock_0/un5_counter_I_29  (.A(
        \two_mhz_clock_0/counter[6]_net_1 ), .B(
        \two_mhz_clock_0/counter[7]_net_1 ), .C(
        \two_mhz_clock_0/counter[8]_net_1 ), .Y(
        \two_mhz_clock_0/DWACT_FINC_E[5] ));
    IOIN_IB \data_in_pad[0]/U0/U1  (.YIN(\data_in_pad[0]/U0/NET1 ), .Y(
        \data_in_c[0] ));
    NOR3B \two_mhz_clock_0/counter_RNILKDS1[2]  (.A(
        \two_mhz_clock_0/counter[5]_net_1 ), .B(
        \two_mhz_clock_0/counter14_3 ), .C(
        \two_mhz_clock_0/counter[2]_net_1 ), .Y(
        \two_mhz_clock_0/counter14_7 ));
    OR2 \modulator_0/output_signal_RNO_12  (.A(
        \modulator_0/clock_counter[8]_net_1 ), .B(
        \modulator_0/clock_counter[7]_net_1 ), .Y(
        \modulator_0/un4lto8_0 ));
    XA1 \modulator_0/clock_counter_RNO[14]  (.A(
        \modulator_0/clock_counter[14]_net_1 ), .B(
        \modulator_0/clock_counter_c13 ), .C(trigger_signal_c), .Y(
        \modulator_0/clock_counter_n14 ));
    DFN1E0C0 \data_rate_0/output_data_rate  (.D(
        \data_rate_0/output_data_rate_25 ), .CLK(
        two_mhz_clock_output_pin), .CLR(reset_c), .E(
        \data_rate_0/output_data_rate_1_sqmuxa_10 ), .Q(
        output_data_rate));
    XA1 \data_rate_0/counter_RNO[3]  (.A(\data_rate_0/counter_c2 ), .B(
        \data_rate_0/counter[3]_net_1 ), .C(
        \data_rate_0/bit_index_1_sqmuxa_1 ), .Y(
        \data_rate_0/counter_n3 ));
    XOR2 \two_mhz_clock_0/un5_counter_I_9  (.A(\two_mhz_clock_0/N_10 ), 
        .B(\two_mhz_clock_0/counter[3]_net_1 ), .Y(
        \two_mhz_clock_0/I_9_1 ));
    AND3 \ten_mhz_clock_0/un5_counter_1_I_27  (.A(
        \ten_mhz_clock_0/DWACT_FINC_E[4] ), .B(
        \ten_mhz_clock_0/counter[8]_net_1 ), .C(
        \ten_mhz_clock_0/counter[9]_net_1 ), .Y(\ten_mhz_clock_0/N_3 ));
    AND3 \main_clock_0/un5_counter_1_I_18  (.A(
        \main_clock_0/counter[3]_net_1 ), .B(
        \main_clock_0/counter[4]_net_1 ), .C(
        \main_clock_0/counter[5]_net_1 ), .Y(
        \main_clock_0/DWACT_FINC_E[2] ));
    CLKIO \reset_pad/U0/U1  (.A(\reset_pad/U0/NET1 ), .Y(reset_c));
    DFN1C0 \data_rate_0/data[7]  (.D(\data_in_c[7] ), .CLK(
        modulator_0_output_signal), .CLR(reset_c), .Q(
        \data_rate_0/data[7]_net_1 ));
    AX1C \ten_mhz_clock_0/un5_counter_1_I_26  (.A(
        \ten_mhz_clock_0/counter[8]_net_1 ), .B(
        \ten_mhz_clock_0/DWACT_FINC_E[4] ), .C(
        \ten_mhz_clock_0/counter[9]_net_1 ), .Y(\ten_mhz_clock_0/I_26 )
        );
    AND2 \ten_mhz_clock_0/un5_counter_1_I_21  (.A(
        \ten_mhz_clock_0/counter[6]_net_1 ), .B(
        \ten_mhz_clock_0/counter[7]_net_1 ), .Y(
        \ten_mhz_clock_0/DWACT_FINC_E[3] ));
    OR3 \modulator_0/output_signal_RNO_3  (.A(
        \modulator_0/clock_counter[13]_net_1 ), .B(
        \modulator_0/clock_counter[15]_net_1 ), .C(
        \modulator_0/clock_counter[14]_net_1 ), .Y(
        \modulator_0/un3lto15_1 ));
    DFN1C0 \data_rate_0/data[1]  (.D(\data_in_c[1] ), .CLK(
        modulator_0_output_signal), .CLR(reset_c), .Q(
        \data_rate_0/data[1]_net_1 ));
    AX1C \two_mhz_clock_0/un5_counter_I_26  (.A(
        \two_mhz_clock_0/counter[8]_net_1 ), .B(
        \two_mhz_clock_0/DWACT_FINC_E[4] ), .C(
        \two_mhz_clock_0/counter[9]_net_1 ), .Y(
        \two_mhz_clock_0/I_26_0 ));
    XA1 \modulator_0/clock_counter_RNO[12]  (.A(\modulator_0/un4lto12 )
        , .B(\modulator_0/clock_counter_c11 ), .C(trigger_signal_c), 
        .Y(\modulator_0/clock_counter_n12 ));
    AOI1B \ten_mhz_clock_0/counter_RNO[2]  (.A(
        \ten_mhz_clock_0/counter14_8 ), .B(
        \ten_mhz_clock_0/counter14_7 ), .C(\ten_mhz_clock_0/I_7_0 ), 
        .Y(\ten_mhz_clock_0/counter_3[2] ));
    DFN1C0 \data_rate_0/data[5]  (.D(\data_in_c[5] ), .CLK(
        modulator_0_output_signal), .CLR(reset_c), .Q(
        \data_rate_0/data[5]_net_1 ));
    DFN1E0C0 \data_rate_0/bit_index[2]  (.D(\data_rate_0/bit_index_n2 )
        , .CLK(two_mhz_clock_output_pin), .CLR(reset_c), .E(
        \data_rate_0/bit_index_1_sqmuxa_1 ), .Q(
        \data_rate_0/bit_index[2]_net_1 ));
    NOR3C \modulator_0/output_signal_RNO_5  (.A(
        \modulator_0/clock_counter[13]_net_1 ), .B(
        \modulator_0/clock_counter[15]_net_1 ), .C(
        \modulator_0/clock_counter[14]_net_1 ), .Y(
        \modulator_0/un4lto15_1 ));
    NOR2B \modulator_0/clock_counter_RNIPAG7[5]  (.A(
        \modulator_0/clock_counter_c4 ), .B(\modulator_0/un3lto5 ), .Y(
        \modulator_0/clock_counter_c5 ));
    IOPAD_TRI \ref_signal_pad/U0/U0  (.D(\ref_signal_pad/U0/NET1 ), .E(
        \ref_signal_pad/U0/NET2 ), .PAD(ref_signal));
    DFN1C0 \ten_mhz_clock_0/counter[11]  (.D(\ten_mhz_clock_0/I_32 ), 
        .CLK(GLA), .CLR(reset_c), .Q(
        \ten_mhz_clock_0/counter[11]_net_1 ));
    NOR2B \modulator_0/output_signal_RNO_15  (.A(
        \modulator_0/clock_counter[6]_net_1 ), .B(
        \modulator_0/un3lto5 ), .Y(\modulator_0/un4lto6_0 ));
    AND3 \ten_mhz_clock_0/un5_counter_1_I_29  (.A(
        \ten_mhz_clock_0/counter[6]_net_1 ), .B(
        \ten_mhz_clock_0/counter[7]_net_1 ), .C(
        \ten_mhz_clock_0/counter[8]_net_1 ), .Y(
        \ten_mhz_clock_0/DWACT_FINC_E[5] ));
    AX1C \two_mhz_clock_0/un5_counter_I_12  (.A(
        \two_mhz_clock_0/counter[3]_net_1 ), .B(
        \two_mhz_clock_0/DWACT_FINC_E[0] ), .C(
        \two_mhz_clock_0/counter[4]_net_1 ), .Y(
        \two_mhz_clock_0/I_12_1 ));
    XOR2 \two_mhz_clock_0/un5_counter_I_17  (.A(\two_mhz_clock_0/N_7 ), 
        .B(\two_mhz_clock_0/counter[6]_net_1 ), .Y(
        \two_mhz_clock_0/I_17_1 ));
    IOTRI_OB_EB \ref_signal_pad/U0/U1  (.D(ref_signal_c), .E(VCC), 
        .DOUT(\ref_signal_pad/U0/NET1 ), .EOUT(
        \ref_signal_pad/U0/NET2 ));
    XOR2 \ten_mhz_clock_0/un5_counter_1_I_20  (.A(
        \ten_mhz_clock_0/N_6 ), .B(\ten_mhz_clock_0/counter[7]_net_1 ), 
        .Y(\ten_mhz_clock_0/I_20_0 ));
    DFN1C0 \main_clock_0/counter[3]  (.D(\main_clock_0/I_9 ), .CLK(GLA)
        , .CLR(reset_c), .Q(\main_clock_0/counter[3]_net_1 ));
    NOR3B \data_rate_0/output_data_rate_RNO_18  (.A(
        \data_rate_0/data[4]_net_1 ), .B(
        \data_rate_0/bit_index[0]_net_1 ), .C(
        \data_rate_0/bit_index[1]_net_1 ), .Y(
        \data_rate_0/output_data_rate_1_sqmuxa_5_2 ));
    AND3 \ten_mhz_clock_0/un5_counter_1_I_24  (.A(
        \ten_mhz_clock_0/DWACT_FINC_E[0] ), .B(
        \ten_mhz_clock_0/DWACT_FINC_E[2] ), .C(
        \ten_mhz_clock_0/DWACT_FINC_E[3] ), .Y(
        \ten_mhz_clock_0/DWACT_FINC_E[4] ));
    DFN1C0 \modulator_0/clock_counter[15]  (.D(
        \modulator_0/clock_counter_n15 ), .CLK(
        ten_mhz_clock_0_clock_out), .CLR(reset_c), .Q(
        \modulator_0/clock_counter[15]_net_1 ));
    AND3 \two_mhz_clock_0/un5_counter_I_24  (.A(
        \two_mhz_clock_0/DWACT_FINC_E[0] ), .B(
        \two_mhz_clock_0/DWACT_FINC_E[2] ), .C(
        \two_mhz_clock_0/DWACT_FINC_E[3] ), .Y(
        \two_mhz_clock_0/DWACT_FINC_E[4] ));
    NOR2B \data_rate_0/output_data_rate_RNO_21  (.A(
        \data_rate_0/data[2]_net_1 ), .B(
        \data_rate_0/bit_index[1]_net_1 ), .Y(
        \data_rate_0/output_data_rate_1_sqmuxa_7_0 ));
    NOR3B \data_rate_0/output_data_rate_RNO_16  (.A(
        \data_rate_0/data[8]_net_1 ), .B(
        \data_rate_0/bit_index[0]_net_1 ), .C(
        \data_rate_0/bit_index[3]_net_1 ), .Y(
        \data_rate_0/output_data_rate_1_sqmuxa_1_1 ));
    IOPAD_IN \reset_pad/U0/U0  (.PAD(reset), .Y(\reset_pad/U0/NET1 ));
    DFN1C0 \ten_mhz_clock_0/counter[0]  (.D(
        \ten_mhz_clock_0/counter_3[0] ), .CLK(GLA), .CLR(reset_c), .Q(
        \ten_mhz_clock_0/counter[0]_net_1 ));
    AOI1 \main_clock_0/counter_RNO[0]  (.A(\main_clock_0/counter14_4 ), 
        .B(\main_clock_0/counter14_3 ), .C(
        \main_clock_0/counter[0]_net_1 ), .Y(
        \main_clock_0/counter_3[0] ));
    NOR3 \ten_mhz_clock_0/counter_RNILRF1[11]  (.A(
        \ten_mhz_clock_0/counter[10]_net_1 ), .B(
        \ten_mhz_clock_0/counter[11]_net_1 ), .C(
        \ten_mhz_clock_0/counter[3]_net_1 ), .Y(
        \ten_mhz_clock_0/counter14_5 ));
    XA1 \modulator_0/clock_counter_RNO[2]  (.A(
        \modulator_0/clock_counter[2]_net_1 ), .B(
        \modulator_0/clock_counter_c1 ), .C(trigger_signal_c), .Y(
        \modulator_0/clock_counter_n2 ));
    XOR2 \main_clock_0/un5_counter_1_I_20  (.A(\main_clock_0/N_2 ), .B(
        \main_clock_0/counter[7]_net_1 ), .Y(\main_clock_0/I_20 ));
    XA1 \modulator_0/clock_counter_RNO[8]  (.A(
        \modulator_0/clock_counter[8]_net_1 ), .B(
        \modulator_0/clock_counter_c7 ), .C(trigger_signal_c), .Y(
        \modulator_0/clock_counter_n8 ));
    XOR2 \main_clock_0/un5_counter_1_I_9  (.A(\main_clock_0/N_6 ), .B(
        \main_clock_0/counter[3]_net_1 ), .Y(\main_clock_0/I_9 ));
    IOIN_IB \data_in_pad[3]/U0/U1  (.YIN(\data_in_pad[3]/U0/NET1 ), .Y(
        \data_in_c[3] ));
    AND3 \main_clock_0/un5_counter_1_I_8  (.A(
        \main_clock_0/counter[0]_net_1 ), .B(
        \main_clock_0/counter[1]_net_1 ), .C(
        \main_clock_0/counter[2]_net_1 ), .Y(\main_clock_0/N_6 ));
    DFN1E0P0 \data_rate_0/packet_start_flag  (.D(AFLSDF_INV_0_net_1), 
        .CLK(two_mhz_clock_output_pin), .PRE(reset_c), .E(
        \data_rate_0/packet_start_flag_1_sqmuxa ), .Q(
        \data_rate_0/packet_start_flag_net_1 ));
    NOR3C \data_rate_0/counter_RNISC382[4]  (.A(
        \data_rate_0/counter[3]_net_1 ), .B(\data_rate_0/counter_c2 ), 
        .C(\data_rate_0/counter[4]_net_1 ), .Y(
        \data_rate_0/counter_c4 ));
    XA1 \modulator_0/clock_counter_RNO[7]  (.A(
        \modulator_0/clock_counter[7]_net_1 ), .B(
        \modulator_0/clock_counter_c6 ), .C(trigger_signal_c), .Y(
        \modulator_0/clock_counter_n7 ));
    NOR2A \two_mhz_clock_0/counter_RNIJI6U[0]  (.A(
        \two_mhz_clock_0/counter[0]_net_1 ), .B(
        \two_mhz_clock_0/counter[3]_net_1 ), .Y(
        \two_mhz_clock_0/counter14_5 ));
    DFN1C0 \ten_mhz_clock_0/counter[7]  (.D(\ten_mhz_clock_0/I_20_0 ), 
        .CLK(GLA), .CLR(reset_c), .Q(
        \ten_mhz_clock_0/counter[7]_net_1 ));
    IOIN_IB \clock_pad/U0/U1  (.YIN(\clock_pad/U0/NET1 ), .Y(clock_c));
    NOR3C \ten_mhz_clock_0/counter_RNI0KG3[11]  (.A(
        \ten_mhz_clock_0/counter14_2 ), .B(
        \ten_mhz_clock_0/counter14_1 ), .C(
        \ten_mhz_clock_0/counter14_5 ), .Y(
        \ten_mhz_clock_0/counter14_8 ));
    NOR2A \modulator_0/clock_counter_RNO[0]  (.A(trigger_signal_c), .B(
        \modulator_0/clock_counter[0]_net_1 ), .Y(
        \modulator_0/clock_counter_n0 ));
    IOPAD_TRI \RSS_EN_pad/U0/U0  (.D(\RSS_EN_pad/U0/NET1 ), .E(
        \RSS_EN_pad/U0/NET2 ), .PAD(RSS_EN));
    AO1A \data_rate_0/packet_start_flag_RNI63RS  (.A(
        \data_rate_0/bit_index17lt3 ), .B(
        \data_rate_0/bit_index[3]_net_1 ), .C(
        \data_rate_0/packet_start_flag_net_1 ), .Y(
        \data_rate_0/un1_output_data_rate83_0 ));
    DFN1C0 \modulator_0/clock_counter[13]  (.D(
        \modulator_0/clock_counter_n13 ), .CLK(
        ten_mhz_clock_0_clock_out), .CLR(reset_c), .Q(
        \modulator_0/clock_counter[13]_net_1 ));
    IOPAD_IN \clock_pad/U0/U0  (.PAD(clock), .Y(\clock_pad/U0/NET1 ));
    DFN1E0C0 \data_rate_0/bit_index[3]  (.D(\data_rate_0/bit_index_n3 )
        , .CLK(two_mhz_clock_output_pin), .CLR(reset_c), .E(
        \data_rate_0/bit_index_1_sqmuxa_1 ), .Q(
        \data_rate_0/bit_index[3]_net_1 ));
    XA1 \modulator_0/clock_counter_RNO[5]  (.A(\modulator_0/un3lto5 ), 
        .B(\modulator_0/clock_counter_c4 ), .C(trigger_signal_c), .Y(
        \modulator_0/clock_counter_n5 ));
    NOR3B \data_rate_0/output_data_rate_RNO_22  (.A(
        \data_rate_0/bit_index[2]_net_1 ), .B(
        \data_rate_0/data[5]_net_1 ), .C(
        \data_rate_0/bit_index[3]_net_1 ), .Y(
        \data_rate_0/output_data_rate_1_sqmuxa_4_1 ));
    XOR2 \two_mhz_clock_0/un5_counter_I_23  (.A(\two_mhz_clock_0/N_5 ), 
        .B(\two_mhz_clock_0/counter[8]_net_1 ), .Y(
        \two_mhz_clock_0/I_23_0 ));
    IOIN_IB \data_in_pad[4]/U0/U1  (.YIN(\data_in_pad[4]/U0/NET1 ), .Y(
        \data_in_c[4] ));
    AND3 \main_clock_0/un5_counter_1_I_19  (.A(
        \main_clock_0/DWACT_FINC_E[0] ), .B(
        \main_clock_0/DWACT_FINC_E[2] ), .C(
        \main_clock_0/counter[6]_net_1 ), .Y(\main_clock_0/N_2 ));
    IOIN_IB \data_in_pad[9]/U0/U1  (.YIN(\data_in_pad[9]/U0/NET1 ), .Y(
        \data_in_c[9] ));
    AND3 \ten_mhz_clock_0/un5_counter_1_I_18  (.A(
        \ten_mhz_clock_0/counter[3]_net_1 ), .B(
        \ten_mhz_clock_0/counter[4]_net_1 ), .C(
        \ten_mhz_clock_0/counter[5]_net_1 ), .Y(
        \ten_mhz_clock_0/DWACT_FINC_E[2] ));
    NOR2A \data_rate_0/counter_RNO[0]  (.A(
        \data_rate_0/bit_index_1_sqmuxa_1 ), .B(
        \data_rate_0/counter[0]_net_1 ), .Y(\data_rate_0/counter_n0 ));
    DFN1C0 \ten_mhz_clock_0/counter[2]  (.D(
        \ten_mhz_clock_0/counter_3[2] ), .CLK(GLA), .CLR(reset_c), .Q(
        \ten_mhz_clock_0/counter[2]_net_1 ));
    NOR2 \ten_mhz_clock_0/counter_RNIQG01[7]  (.A(
        \ten_mhz_clock_0/counter[9]_net_1 ), .B(
        \ten_mhz_clock_0/counter[7]_net_1 ), .Y(
        \ten_mhz_clock_0/counter14_1 ));
    NOR2B \data_rate_0/bit_index_RNI1TMA[1]  (.A(
        \data_rate_0/bit_index[1]_net_1 ), .B(
        \data_rate_0/bit_index[0]_net_1 ), .Y(
        \data_rate_0/bit_index_c1 ));
    DFN1C0 \main_clock_0/counter[1]  (.D(\main_clock_0/I_5 ), .CLK(GLA)
        , .CLR(reset_c), .Q(\main_clock_0/counter[1]_net_1 ));
    IOIN_IB \data_in_pad[6]/U0/U1  (.YIN(\data_in_pad[6]/U0/NET1 ), .Y(
        \data_in_c[6] ));
    AO1 \modulator_0/output_signal_RNO_0  (.A(\modulator_0/un3lt12 ), 
        .B(\modulator_0/un4lto12 ), .C(\modulator_0/un3lto15_1 ), .Y(
        \modulator_0/un3_0_0 ));
    AND3 \main_clock_0/un5_counter_1_I_16  (.A(
        \main_clock_0/DWACT_FINC_E[0] ), .B(
        \main_clock_0/DWACT_FINC_E[1] ), .C(
        \main_clock_0/counter[5]_net_1 ), .Y(\main_clock_0/N_3 ));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
