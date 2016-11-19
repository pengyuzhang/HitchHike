///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: counter_tmp.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//
// Description: 
//
// <Description here>
//
// Targeted device: <Family::IGLOO> <Die::AGLN250V2> <Package::100 VQFP>
// Author: <Name>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 
//`timescale <time_units> / <precision>

module counter_tmp( clock, reset, output_port);
input clock, reset;
output[1:0] output_port;

reg[1:0] counter_reg;

always @ (posedge clock)
begin
    if (!reset)
        counter_reg <= 2'b00;
    else
        counter_reg <= counter_reg+1;
end 

assign output_port = counter_reg;

endmodule

