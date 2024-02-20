`timescale 1ns/1ns

module my_testbench();
	
reg [31:0] A, B;
  reg [2:0] operation;
  wire [31:0] Result;
  wire Zero, Negative;

  ALU32 my_ALU(
    .A(A),
    .B(B),
    .operation(operation),
    .Result(Result),
    .Zero(Zero),
    .Negative(Negative)
  );

  initial begin
    // Test 1: Toplama
    A = 8'h05;
    B = 8'h0A;
    operation = 3'b000; // Toplama
    #10;
    if (Result === A + B && Zero === 0 && Negative === 0)
      $display("Test 1 passed");
    else
      $display("Test 1 failed");

    // Test 2: Çıkarma
    A = 8'h0A;
    B = 8'h05;
    operation = 3'b001; // Çıkarma
    #10;
    if (Result === A - B && Zero === 0 && Negative === 0)
      $display("Test 2 passed");
    else
      $display("Test 2 failed");

    // Test 3: AND
    A = 8'h0F;
    B = 8'h0A;
    operation = 3'b010; // AND
    #10;
    if (Result === (A & B) && Zero === 0 && Negative === 0)
      $display("Test 3 passed");
    else
      $display("Test 3 failed");

    // Test 4: OR
    A = 8'h05;
    B = 8'h0A;
    operation = 3'b011; // OR
    #10;
    if (Result === (A | B) && Zero === 0 && Negative === 0)
      $display("Test 4 passed");
    else
      $display("Test 4 failed");

    // Test 5: XOR
    A = 8'h0F;
    B = 8'h0A;
    operation = 3'b100; // XOR
    #10;
    if (Result === (A ^ B) && Zero === 0 && Negative === 0)
      $display("Test 5 passed");
    else
      $display("Test 5 failed");

    // Test 6: NOR
    A = 8'h0A;
    B = 8'h05;
    operation = 3'b101; // NOR
    #10;
    if (Result === ~(A | B) && Zero === 0 && Negative === 0)
      $display("Test 6 passed");
    else
      $display("Test 6 failed");

    // Test 7: SLT
    A = 8'h05;
    B = 8'h0A;
    operation = 3'b110; // SLT
    #10;
    if (Result === (A < B) && Zero === 0 && Negative === 1)
      $display("Test 7 passed");
    else
      $display("Test 7 failed");

    // Additional tests can be added as needed.

    $stop; // Stop simulation
  end

endmodule	