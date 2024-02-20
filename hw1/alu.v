module alu (input [31:0] A,  
input [31:0] B, 
input [2:0] ALUop,
input clk,
input reset,
output [31:0] result);


	wire [31:0] addResult, subResult, orResult, norResult, xorResult, andResult, modResult;
	wire [31:0] sltResult;
	wire barrow;

	
	my_and function1 (andResult, A[31:0], B[31:0]);
	my_or function2 (orResult, A[31:0], B[31:0]);
	my_xor function3 (xorResult, A[31:0], B[31:0]);
	my_nor function4 (norResult, A[31:0], B[31:0]);
	cla_full_adder_32bit function5 (addResult, c_out, A, B, 1'b0);
	substract function6 (subResult, barrow, A, B);
	less_than function7 (sltResult, A, B); 
	mod_operator function8 (A[31:0], B[31:0], reset, clk, modResult);
	
	
   mux32bit mux1(
	.andResult(andResult),
	.orResult(orResult),
	.xorResult(xorResult),
	.norResult(norResult),
	.sltResult(sltResult),
	.addResult(addResult),
	.subResult(subResult),
	.modResult(modResult),
	.opCode(ALUop),
	.result(result));
  
endmodule



  