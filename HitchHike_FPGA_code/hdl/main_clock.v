///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: main_clock.v
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

module main_clock( clock, reset, clock_out );
input clock, reset;
output reg clock_out;

reg[7:0] counter;

always @(posedge clock or negedge reset)
begin
    if (!reset)
    begin
        counter <= 8'h00;
        clock_out <= 1'h0;
    end
    else
    begin
        if (counter==8'h00)
        begin
            counter <= 0;
            clock_out <= ~clock_out;
        end
        else        
        begin
            counter <= counter+1;
            clock_out <= clock_out;
        end
    end
end

endmodule

