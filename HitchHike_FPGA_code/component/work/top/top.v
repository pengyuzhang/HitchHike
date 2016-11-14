//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Fri Nov 11 14:44:38 2016
// Version: v11.5 11.5.0.26
//////////////////////////////////////////////////////////////////////

`timescale 1 ns/100 ps

// top
module top(
    // Inputs
    clock,
    data_in,
    reset,
    trigger_signal,
    // Outputs
    RSS_EN,
    ref_signal,
    signal_into_switch
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input        clock;
input  [9:0] data_in;
input        reset;
input        trigger_signal;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output       RSS_EN;
output       ref_signal;
output       signal_into_switch;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire         AND2_0_Y;
wire         AND2_1_Y;
wire         AND2_2_Y;
wire         AND2_3_Y;
wire         clock;
wire   [9:0] data_in;
wire         data_path_signal;
wire         INV_1_Y;
wire         INV_2_Y;
wire         modulator_0_output_signal;
wire         output_data_rate;
wire         pll_core_0_GLA;
wire         ref_signal_net_0;
wire         reset;
wire         signal_into_switch_net_0;
wire         ten_mhz_clock_0_clock_out;
wire         trigger_signal;
wire         two_mhz_clock_output_pin;
wire         Y;
wire         signal_into_switch_net_1;
wire         ref_signal_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire         VCC_net;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign VCC_net = 1'b1;
//--------------------------------------------------------------------
// TieOff assignments
//--------------------------------------------------------------------
assign RSS_EN                   = 1'b1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign signal_into_switch_net_1 = signal_into_switch_net_0;
assign signal_into_switch       = signal_into_switch_net_1;
assign ref_signal_net_1         = ref_signal_net_0;
assign ref_signal               = ref_signal_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------AND2
AND2 AND2_0(
        // Inputs
        .A ( ref_signal_net_0 ),
        .B ( output_data_rate ),
        // Outputs
        .Y ( AND2_0_Y ) 
        );

//--------AND2
AND2 AND2_1(
        // Inputs
        .A ( Y ),
        .B ( INV_1_Y ),
        // Outputs
        .Y ( AND2_1_Y ) 
        );

//--------AND2
AND2 AND2_2(
        // Inputs
        .A ( data_path_signal ),
        .B ( modulator_0_output_signal ),
        // Outputs
        .Y ( AND2_2_Y ) 
        );

//--------AND2
AND2 AND2_3(
        // Inputs
        .A ( ref_signal_net_0 ),
        .B ( INV_2_Y ),
        // Outputs
        .Y ( AND2_3_Y ) 
        );

//--------data_rate
data_rate data_rate_0(
        // Inputs
        .clock            ( two_mhz_clock_output_pin ),
        .reset            ( reset ),
        .trigger_signal   ( modulator_0_output_signal ),
        .data_in          ( data_in ),
        // Outputs
        .output_data_rate ( output_data_rate ) 
        );

//--------INV
INV INV_0(
        // Inputs
        .A ( ref_signal_net_0 ),
        // Outputs
        .Y ( Y ) 
        );

//--------INV
INV INV_1(
        // Inputs
        .A ( output_data_rate ),
        // Outputs
        .Y ( INV_1_Y ) 
        );

//--------INV
INV INV_2(
        // Inputs
        .A ( modulator_0_output_signal ),
        // Outputs
        .Y ( INV_2_Y ) 
        );

//--------main_clock
main_clock main_clock_0(
        // Inputs
        .clock     ( pll_core_0_GLA ),
        .reset     ( reset ),
        // Outputs
        .clock_out ( ref_signal_net_0 ) 
        );

//--------modulator
modulator modulator_0(
        // Inputs
        .clock          ( ten_mhz_clock_0_clock_out ),
        .reset          ( reset ),
        .trigger_signal ( trigger_signal ),
        // Outputs
        .output_signal  ( modulator_0_output_signal ) 
        );

//--------OR2
OR2 OR2_0(
        // Inputs
        .A ( AND2_0_Y ),
        .B ( AND2_1_Y ),
        // Outputs
        .Y ( data_path_signal ) 
        );

//--------OR2
OR2 OR2_1(
        // Inputs
        .A ( AND2_2_Y ),
        .B ( AND2_3_Y ),
        // Outputs
        .Y ( signal_into_switch_net_0 ) 
        );

//--------pll_core
pll_core pll_core_0(
        // Inputs
        .POWERDOWN ( VCC_net ),
        .CLKA      ( clock ),
        // Outputs
        .LOCK      (  ),
        .GLA       ( pll_core_0_GLA ) 
        );

//--------ten_mhz_clock
ten_mhz_clock ten_mhz_clock_0(
        // Inputs
        .clock_in  ( pll_core_0_GLA ),
        .reset     ( reset ),
        // Outputs
        .clock_out ( ten_mhz_clock_0_clock_out ) 
        );

//--------two_mhz_clock
two_mhz_clock two_mhz_clock_0(
        // Inputs
        .clock_in  ( pll_core_0_GLA ),
        .reset     ( reset ),
        // Outputs
        .clock_out ( two_mhz_clock_output_pin ) 
        );


endmodule
