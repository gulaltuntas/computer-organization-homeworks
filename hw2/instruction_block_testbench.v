module instruction_block_testbench();


	wire [31:0] instructions;
	instruction_block i1 (instructions);
	
	initial begin
	#5 $display("%b", instructions);
	end







endmodule
