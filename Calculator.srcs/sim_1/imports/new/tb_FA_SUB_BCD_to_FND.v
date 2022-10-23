`timescale 1ns / 1ps


module tb_FA_SUB_BCD_to_FND();

    reg [1:0] i_digitSelect;
    reg [3:0] i_A, i_B;
    reg i_en, i_mode;

    wire [3:0] o_digit;
    wire [7:0] o_fndfont;
    wire o_carry;

    FA_SUB_BCDtoFND dut(
        .i_digitSelect(i_digitSelect),
        .i_A(i_A),
        .i_B(i_B),
        .i_en(i_en),
        .i_mode(i_mode),
        .o_digit(o_digit),
        .o_fndfont(o_fndfont),
        .o_carry(o_carry)
    );

    initial begin
        #00 i_mode = 0; i_en = 0; i_digitSelect = 2'b00; i_A = 4'h3; i_B = 4'h5;
        #10 i_mode = 1; i_en = 0; i_digitSelect = 2'b00; i_A = 4'h3; i_B = 4'h5;
        #10 i_mode = 0; i_en = 1; i_digitSelect = 2'b00; i_A = 4'h3; i_B = 4'h5;
        #10 i_mode = 1; i_en = 1; i_digitSelect = 2'b00; i_A = 4'h3; i_B = 4'h5;
        #10 i_mode = 0; i_en = 0; i_digitSelect = 2'b01; i_A = 4'h6; i_B = 4'h5;
        #10 i_mode = 0; i_en = 0; i_digitSelect = 2'b10; i_A = 4'h4; i_B = 4'h5;
        #10 i_mode = 0; i_en = 0; i_digitSelect = 2'b11; i_A = 4'h0; i_B = 4'h5;
        #10 i_mode = 1; i_en = 0; i_digitSelect = 2'b00; i_A = 4'h5; i_B = 4'h2;
        #10 i_mode = 1; i_en = 0; i_digitSelect = 2'b00; i_A = 4'h3; i_B = 4'h3;
        #10 i_mode = 1; i_en = 0; i_digitSelect = 2'b00; i_A = 4'h3; i_B = 4'h5;

        #10 $finish;
    end
    
endmodule
