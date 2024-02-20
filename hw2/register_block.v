module register_block(
output reg [31:0] read_data1,
output reg [31:0] read_data2,
input [31:0] write_data,
input [4:0] read_reg1,
input [4:0] read_reg2,
input[4:0] write_reg,
input regWrite);

reg [31:0] registers [31:0];

	initial begin
	$readmemb("registers.mem", registers);
	end
	
	
	always @(*)begin
	read_data1 = registers[read_reg1];
	read_data2 = registers[read_reg2];
		if(regWrite && write_reg != 5'b0) begin
		registers[write_reg] <= write_data[31:0];
		$writememb("registers.mem", registers);
		end
	end




endmodule

