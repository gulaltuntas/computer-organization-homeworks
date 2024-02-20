module alu(
output [31:0] alu_result,
output zero_bit,
input [31:0] alu_src1,
input [31:0] alu_src2,
input [2:0] alu_ctr);


	wire [31:0] addResult, subResult, orResult, andResult, xorResult, nor_result;
	wire [31:0] sltResult;
	wire barrow;

	
	my_and_32bit function1 (andResult, alu_src1, alu_src2);
	my_or_32bit function2 (orResult, alu_src1, alu_src2);
	adder32bit function5 (addResult, c_out, alu_src1, alu_src2, 1'b0);
	substract function6 (subResult, barrow, alu_src1, alu_src2);
	set_on_less_than function7 (sltResult, alu_src1, alu_src2); 
	
	
   mux32bit mux1(
	.and_result(andResult),
	.or_result(orResult),
	.xor_result(xorResult),
	.nor_result(nor_result),
	.slt_result(sltResult),
	.add_result(addResult),
	.sub_result(subResult),
	.op_code(alu_ctr),
	.out(alu_result));
  
	nor xor1(zero_bit,alu_result[0],alu_result[1],alu_result[2],alu_result[3],alu_result[4],alu_result[5],alu_result[6],alu_result[7],alu_result[8],alu_result[9]
  ,alu_result[10],alu_result[11],alu_result[12],alu_result[13],alu_result[14],alu_result[15],alu_result[16],alu_result[17],alu_result[18],alu_result[19],alu_result[20]
  ,alu_result[21],alu_result[22],alu_result[23],alu_result[24],alu_result[25],alu_result[26],alu_result[27],alu_result[28],alu_result[29],alu_result[30],alu_result[31]);



endmodule
