// -------------------------
// Registrador de deslocamento para esquerda com carregamento de 1 bit
// Nome: Axell Brendow
// Matricula: 631822
// -------------------------

`ifndef SHIFT_LEFT_REGISTER_1BIT_LOAD_V
`define SHIFT_LEFT_REGISTER_1BIT_LOAD_V

`include "flip_flop_d_with_triggered_bit_load.v"

module shift_left_register_1bit_load (input clock, input data, input load, input bit_to_load, input clear, output a, output b, output c, output d, output e);

    wire a_negated;
    wire b_negated;
    wire c_negated;
    wire d_negated;
    wire e_negated;
	
	flip_flop_d_with_triggered_bit_load ff_d1(clock, data, load, bit_to_load, 1'b0, clear, e, e_negated);
    flip_flop_d_with_triggered_bit_load ff_d2(clock, e   , 1'b0, 1'b0       , 1'b0, clear, d, d_negated);
    flip_flop_d_with_triggered_bit_load ff_d3(clock, d   , 1'b0, 1'b0       , 1'b0, clear, c, c_negated);
    flip_flop_d_with_triggered_bit_load ff_d4(clock, c   , 1'b0, 1'b0       , 1'b0, clear, b, b_negated);
    flip_flop_d_with_triggered_bit_load ff_d5(clock, b   , 1'b0, 1'b0       , 1'b0, clear, a, a_negated);

endmodule

`endif