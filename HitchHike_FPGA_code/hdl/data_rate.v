///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: data_rate.v
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

module data_rate( clock, reset, data_in, trigger_signal, output_data_rate );
input clock, reset;
input[9:0] data_in;
input trigger_signal;
output reg output_data_rate;

reg[9:0] data;
reg[3:0] bit_index;
reg packet_start_flag;
reg[7:0] counter;

always @(posedge trigger_signal or negedge reset)
begin
    if (!reset)
        data <= 0;
    else
        data <= data_in;
end

always @(posedge clock or negedge reset)
begin
    if (!reset)
    begin
        output_data_rate <= 0;
        bit_index <= 0;
        packet_start_flag <= 1;
        counter <= 0;
    end
    else if (trigger_signal)
    begin
        if (packet_start_flag)
        begin
            output_data_rate <= ~output_data_rate;
            counter <= counter+1;
            if (counter==8'd47)
            begin
                packet_start_flag <= 0;
                bit_index <= 0;
                counter <= 0;
            end
        end
        else
        begin
            if (bit_index==4'd0)
            begin
                if (data[9]==1'b0)
                    output_data_rate <= output_data_rate;
                else
                    output_data_rate <= ~output_data_rate;
            end
            else if (bit_index==4'd1)
            begin
                if (data[8]==1'b0)
                    output_data_rate <= output_data_rate;
                else
                    output_data_rate <= ~output_data_rate;
            end
            else if (bit_index==4'd2)
            begin
                if (data[7]==1'b0)
                    output_data_rate <= output_data_rate;
                else
                    output_data_rate <= ~output_data_rate;
            end
            else if (bit_index==4'd3)
            begin
                if (data[6]==1'b0)
                    output_data_rate <= output_data_rate;
                else
                    output_data_rate <= ~output_data_rate;
            end
            else if (bit_index==4'd4)
            begin
                if (data[5]==1'b0)
                    output_data_rate <= output_data_rate;
                else
                    output_data_rate <= ~output_data_rate;
            end
            else if (bit_index==4'd5)
            begin
                if (data[4]==1'b0)
                    output_data_rate <= output_data_rate;
                else
                    output_data_rate <= ~output_data_rate;
            end
            else if (bit_index==4'd6)
            begin
                if (data[3]==1'b0)
                    output_data_rate <= output_data_rate;
                else
                    output_data_rate <= ~output_data_rate;
            end
            else if (bit_index==4'd7)
            begin
                if (data[2]==1'b0)
                    output_data_rate <= output_data_rate;
                else
                    output_data_rate <= ~output_data_rate;
            end
            else if (bit_index==4'd8)
            begin
                if (data[1]==1'b0)
                    output_data_rate <= output_data_rate;
                else
                    output_data_rate <= ~output_data_rate;
            end
            else if (bit_index==4'd9)
            begin
                if (data[0]==1'b0)
                    output_data_rate <= output_data_rate;
                else
                    output_data_rate <= ~output_data_rate;
            end

            counter <= counter+1;
            if (counter==8'd32)
            begin
                if (bit_index<4'd9)
                    bit_index <= bit_index+1;
                else
                    bit_index <= 0;
                counter <= 0;
            end
        end
    end
    else
    begin
        output_data_rate <= 0;
        bit_index <= 0;
        packet_start_flag <= 1;
        counter <= 0;
    end
end

endmodule