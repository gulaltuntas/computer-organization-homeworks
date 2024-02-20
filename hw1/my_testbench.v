module my_testbench;


  reg [31:0] A, B;
  reg [2:0] ALUop;
  reg clk, reset;
  wire [31:0] result;

  alu uut (
    .A(A),
	 .B(B),
	 .ALUop(ALUop),
	 .clk(clk),
	 .reset(reset),
	 .result(result)
  );

  initial clk = 0;
  always #5 clk = ~clk;

  // Initial block
  initial begin
    A = 32'b00000000000000000000000000100011;
    B = 32'b00000000000000000000000000001111;
    ALUop = 3'b000;
    reset = 1;


    #9 reset = 0;

    #10 ALUop = 3'b000; // AND
    #10 ALUop = 3'b001; // OR
    #10 ALUop = 3'b010; // XOR
    #10 ALUop = 3'b011; // NOR
    #10 ALUop = 3'b100; // SLT
    #10 ALUop = 3'b101; // ADD
    #10 ALUop = 3'b110; // SUB
    #10 ALUop = 3'b111; // Mod

    // Stop simulation
    #10$finish;
  end

  always @(posedge clk) $display("Time = %t A = %b B = %b ALUop = %b Result = %b", $time, A, B, ALUop, result);

endmodule
