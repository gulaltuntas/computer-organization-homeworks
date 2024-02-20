`timescale 1ns/1ps

module testbench_control_unit;

  // Inputs
  reg [5:0] opcode;
  
  // Outputs
  wire regDst, branch, memRead, memWrite, ALUsrc, regWrite, jump, move;
  wire [2:0] ALUop;
  
  // Instantiate the control_unit module to be tested
  control_unit dut (
    .regDst(regDst),
    .branch(branch),
    .memRead(memRead),
    .memWrite(memWrite),
    .ALUop(ALUop),
    .ALUsrc(ALUsrc),
    .regWrite(regWrite),
    .jump(jump),
    .move(move),
    .opcode(opcode)
  );

  // Initial block
  initial begin
    // Initialize inputs
    opcode = 6'b000000; // Initialize opcode to a default value

    // Apply stimulus
    // Test Case 1: R-Type instruction (e.g., ADD)
    opcode = 6'b000000; // ADD instruction
    #10; // Allow some time for the control_unit to process the opcode
    // Add assertions or $display statements to check the output signals based on the expected values for R-Type
    $display("Test Case 1: R-Type - regDst=%b, branch=%b, memRead=%b, memWrite=%b, ALUop=%b, ALUsrc=%b, regWrite=%b, jump=%b, move=%b", regDst, branch, memRead, memWrite, ALUop, ALUsrc, regWrite, jump, move);

    // Test Case 2: I-Type instruction (e.g., ADDI)
    opcode = 6'b001000; // ADDI instruction
    #10; // Allow some time for the control_unit to process the opcode
    // Add assertions or $display statements to check the output signals based on the expected values for I-Type
    $display("Test Case 2: I-Type - regDst=%b, branch=%b, memRead=%b, memWrite=%b, ALUop=%b, ALUsrc=%b, regWrite=%b, jump=%b, move=%b", regDst, branch, memRead, memWrite, ALUop, ALUsrc, regWrite, jump, move);

    // Test Case 3: Branch instruction (e.g., BEQ)
    opcode = 6'b100011; // BEQ instruction
    #10; // Allow some time for the control_unit to process the opcode
    // Add assertions or $display statements to check the output signals based on the expected values for Branch
    $display("Test Case 3: Branch - regDst=%b, branch=%b, memRead=%b, memWrite=%b, ALUop=%b, ALUsrc=%b, regWrite=%b, jump=%b, move=%b", regDst, branch, memRead, memWrite, ALUop, ALUsrc, regWrite, jump, move);

    // Add more test cases as needed
  end

endmodule

