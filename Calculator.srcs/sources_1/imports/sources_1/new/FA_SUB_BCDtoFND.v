`timescale 1ns / 1ps



module FA_SUB_BCDtoFND(
    input [1:0] i_digitSelect,
    input [3:0] i_A, i_B,
    input i_en, i_mode,

    output [3:0] o_digit,
    output [7:0] o_fndfont,
    output o_carry
    );

    wire [3:0] i_value;

    FA_SUB_4bit dut0(
        .i_A(i_A),
        .i_B(i_B),
        .i_mode(i_mode),
        .o_sum(i_value),
        .o_carry(o_carry)
    );

    BCDtoFND dut1(
        .i_digitSelect(i_digitSelect),
        .i_value(i_value),
        .i_en(i_en),
        .o_digit(o_digit),
        .o_fndfont(o_fndfont)
    );

endmodule
