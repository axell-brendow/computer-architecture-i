// -------------------------
// Contador Assincrono Decrescente
// Nome: Axell Brendow
// Matricula: 631822
// -------------------------

`ifndef DECRESCENT_ASYNCHRONOUS_COUNTER_V
`define DECRESCENT_ASYNCHRONOUS_COUNTER_V

`include "programmable_counter.v"

// USAGE: clear, input lower_limit, input upper_limit, load (2x), clock

module decrescent_asynchronous_counter (input clock, input clear, input load, output [4:0] current_value);

    wire [7:0] current_value_8bits;
	
	programmable_counter counter(clock, clear, load, 8'b00000000, 8'b00011111, 1'b1, current_value_8bits);
	
	assign current_value = current_value_8bits[4:0];

endmodule

`endif