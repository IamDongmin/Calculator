`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/26 00:26:27
// Design Name: 
// Module Name: tb_Calculator
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_Calculator();

    reg [3:0] i_a, i_b;
    reg [1:0] i_selOperator, i_digitSelect;
    reg i_en;

    wire [3:0] o_digit;
    wire [7:0] o_fndfont;

    Calculator dut(
        .i_a(i_a),
        .i_b(i_b),
        .i_selOperator(i_selOperator),
        .i_digitSelect(i_digitSelect),
        .i_en(i_en),
        .o_digit(o_digit),
        .o_fndfont(o_fndfont)
    );

    initial begin
        #00 i_en = 1; i_digitSelect = 2'b00; i_selOperator = 2'b00; i_a = 4'h0; i_b = 4'h3;
        #10 i_en = 1; i_digitSelect = 2'b01; i_selOperator = 2'b01; i_a = 4'h5; i_b = 4'h4;
        #10 i_en = 1; i_digitSelect = 2'b10; i_selOperator = 2'b10; i_a = 4'h3; i_b = 4'h7;
        #10 i_en = 1; i_digitSelect = 2'b11; i_selOperator = 2'b11; i_a = 4'h9; i_b = 4'h3;

        #10 i_en = 0; i_digitSelect = 2'b00; i_selOperator = 2'b00; i_a = 4'h0; i_b = 4'h3;
        #10 i_en = 0; i_digitSelect = 2'b01; i_selOperator = 2'b01; i_a = 4'h5; i_b = 4'h4;
        #10 i_en = 0; i_digitSelect = 2'b10; i_selOperator = 2'b10; i_a = 4'h3; i_b = 4'h7;
        #10 i_en = 0; i_digitSelect = 2'b11; i_selOperator = 2'b11; i_a = 4'h9; i_b = 4'h3;
        #10 $finish;
    end
endmodule
