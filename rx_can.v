`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:42:04 05/11/2015 
// Design Name: 
// Module Name:    rx_can 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module rx_container(
	output reg [63:0] rx_data,
	input txing,
	input rx,
	input clk,
	input baud_clk,
	input rst,
	input rxing
    );
	
	initial rx_data = 64'd0;
	
	shift_reg data_frame_buffer(rx, shifted_bus, rst, baud_clk);
	

endmodule
