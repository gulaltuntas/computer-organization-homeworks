`timescale 1ns/1ps

module alu_testbench;

  // Inputs
  reg [31:0] alu_src1;
  reg [31:0] alu_src2;
  reg [2:0] alu_ctr;

  // Outputs
  wire [31:0] alu_result;
  wire zero_bit;

  // Instantiate the ALU module
  alu my_alu (
    .alu_result(alu_result),
    .zero_bit(zero_bit),
    .alu_src1(alu_src1),
    .alu_src2(alu_src2),
    .alu_ctr(alu_ctr)
  );

  // Initial block
  initial begin
    // Test Case 1: AND operation
    alu_src1 = 32'b10101010101010101010101010111111;
    alu_src2 = 32'b01010101010101010101010101011111;
    alu_ctr = 3'b000;
    #10; // Allow some time for the ALU to process
    $display("Test Case 1 (AND): alu_result=%b, zero_bit=%b", alu_result, zero_bit);

    // Test Case 2: OR operation
    alu_src1 = 32'b10101010101010101010101010111110;
    alu_src2 = 32'b01010101010101010101010101010101;
    alu_ctr = 3'b001;
    #10;
    $display("Test Case 2 (OR): alu_result=%b, zero_bit=%b", alu_result, zero_bit);

    // Test Case 3: Subtraction operation
    alu_src1 = 32'b10101010101010101010101010101010;
    alu_src2 = 32'b01010101010101010101010101010101;
    alu_ctr = 3'b110;
    #10;
    $display("Test Case 3 (Subtraction): alu_result=%b, zero_bit=%b", alu_result, zero_bit);

    // Add more test cases as needed
    
  //  $stop; // Stop simulation
  end

endmodule
