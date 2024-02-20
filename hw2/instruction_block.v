module instruction_block(output reg [31:0] instruction, input[31:0] pc);

	reg [31:0] registers[31:0];
	
	
	initial begin
	$readmemb("instructions.mem", registers);
	end
	
	
	always @(pc) begin
	instruction = registers[pc];
	end

endmodule


