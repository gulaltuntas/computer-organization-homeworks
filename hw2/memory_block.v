module memory_block(
output reg[31:0] read_data,
input byteOperations,
input [17:0] address,
input [31:0] write_data,
input memRead,
input memWrite);



reg [31:0] memory [31:0];

	initial begin
	$readmemb("memory.mem", memory);
	end
	
	always@(*)begin
	if (memRead == 1'b1) begin
		read_data = memory[address];
	end
	if (memWrite == 1'b1) begin
		memory[address] = write_data[address];
		$writememb("memory.mem", memory);
	end
end




endmodule


