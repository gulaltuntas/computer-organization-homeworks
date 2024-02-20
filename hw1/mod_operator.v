module mod_operator(
	input [31:0] a,
	input [31:0] b,
	input reset,
	input clk,
	output [31:0]result
);

wire wx, wwe, ws;
wire [31:0]w_result;
mod_cu control(
.reset(reset),
.clk(clk),
.x(wx),
.finalResult(w_result),
.we(wwe),
.s(ws),
.result(result)
);

mod_dp d(
.clk(clk),
.s(ws),
.we(wwe),
.a(a),
.b(b),
.x(wx),
.finalResult(w_result)
);


endmodule
