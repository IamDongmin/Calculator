`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:  Chigook Lee
// 
// Create Date: 2022/10/06 11:17:17
// Design Name: 
// Module Name: FND_Select_Decoder
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


module FND_Select_Decoder(
    input [1:0] i_digitSelect,
    input i_en,

    output [3:0] o_digit
    );

    reg [3:0] r_digit;

    assign o_digit = r_digit;

    always @(i_digitSelect or i_en) begin        //항상 @at(i_digitSelect, i_en)를 보고 있다
        if (i_en) begin
            r_digit = 4'b1111;
        end
        
        else begin
            case (i_digitSelect)
                2'h0 : r_digit = 4'b1110; 
                2'h1 : r_digit = 4'b1101;
                2'h2 : r_digit = 4'b1011;
                2'h3 : r_digit = 4'b0111;
            endcase
        end
    end

endmodule
