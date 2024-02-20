module mips_testbench();

reg clk_tb;

mips Mips(
.clk(clk_tb)
);


initial begin
    clk_tb = 1'b0;
	 #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	 #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	 #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	 #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	  #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	 #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	  #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	 #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	  #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	 #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	 #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	 #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	  #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	 #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	  #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	 #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	  #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	 #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	 #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	 #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	  #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	 #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	  #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	 #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	  #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	 #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	 #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	 #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	  #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	 #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	  #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
	 #10 clk_tb=1'b1;
	  #10 clk_tb = 1'b0;
end


endmodule





/*








module mips_testbench();

	 `define DELAY 20
	reg clock;
	reg [31:0] program_counter;

	mips m1 (clock);

	
	
	initial clock = 0;
	
	//instruction_memory m1 (content);
	
    initial begin 
	 $display("denemedeneme");
//	clock = ~clock; #`DELAY;
  // clock = ~clock; #`DELAY;
    end
	 
endmodule



/*

`define DELAY 5
	reg clock;
	reg [31:0] pc;

	//mips start();

	initial clock = 0;
	initial pc = 32'd0;


	initial begin 
	clock = ~clock; #`DELAY;
	pc = 32'd1;
	clock = ~clock; #`DELAY;
	pc = 32'd2;
	clock = ~clock; #`DELAY;
	pc = 32'd3;
	clock = ~clock; #`DELAY;
	pc = 32'd4;
	clock = ~clock; #`DELAY;
	pc = 32'd5;
	clock = ~clock; #`DELAY;
	pc = 32'd6;
	clock = ~clock; #`DELAY;
	pc = 32'd7;
	clock = ~clock; #`DELAY;
	pc = 32'd8;
	clock = ~clock; #`DELAY;
	pc = 32'd9;
	clock = ~clock; #`DELAY;
	pc = 32'd10;
	clock = ~clock; #`DELAY;
	pc = 32'd11;
	clock = ~clock; #`DELAY;
	pc = 32'd12;
	clock = ~clock; #`DELAY;
	pc = 32'd13;
	clock = ~clock; #`DELAY;
	pc = 32'd14;
	clock = ~clock; #`DELAY;
	pc = 32'd15;
	clock = ~clock; #`DELAY;
	pc = 32'd16;
	clock = ~clock; #`DELAY;
	pc = 32'd17;
	clock = ~clock; #`DELAY;
	pc = 32'd18;
	clock = ~clock; #`DELAY;
	pc = 32'd19;
	clock = ~clock; #`DELAY;
	pc = 32'd20;
	clock = ~clock; #`DELAY;
	pc = 32'd21;
	clock = ~clock; #`DELAY;
	pc = 32'd22;
	clock = ~clock; #`DELAY;
	pc = 32'd23;
	clock = ~clock; #`DELAY;
	pc = 32'd24;
	clock = ~clock; #`DELAY;
	pc = 32'd25;
	clock = ~clock; #`DELAY;
	pc = 32'd26;
	clock = ~clock; #`DELAY;
	pc = 32'd27;
	clock = ~clock; #`DELAY;
	pc = 32'd28;
	clock = ~clock; #`DELAY;
	pc = 32'd29;
	$display ("working done");
end



endmodule*/
