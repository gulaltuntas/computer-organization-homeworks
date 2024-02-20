module mod_cu(
input reset,
	input clk,
	input x,
	input [31:0] finalResult,
	output reg we,
	output reg s,
	output reg [31:0]result);
	
	
	reg [1:0] curr_state, next_state;


	localparam	first_state	= 2'b01,
				second_state = 2'b10,
				third_state	= 2'b11;
				
				
//State Registers			
	always @(posedge clk)
		begin
		if(reset)
			curr_state <= first_state;
		else
			curr_state <= next_state;
		end
	

//Next State Logic
	always @(*)
		begin
		case(curr_state)
			first_state: 	begin
				next_state = second_state;
				end
	
			second_state: begin
				if(x)
					next_state = third_state;
				else
					next_state = second_state;
				end
	
			third_state:begin
				end
		endcase
		end
	
//Output Logic
	always @(*)
		begin
		case(curr_state)
		first_state: 	begin
				s = 1'b0;
				we = 1'b1;
				end
	
		second_state: begin
				s = 1'b1;
				we = 1'b1;
				end
	
		third_state: begin
				we = 1'b0;
				result = finalResult;
				end
	
		endcase
		end

endmodule
