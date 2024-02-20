module mod_dp(
    input clk,
    input s,
    input we,
    input [31:0] a,
    input [31:0] b,
    output reg x,
    output reg [31:0] finalResult
);

    reg [31:0] temp;
    reg [31:0] mux_out1;
    reg [31:0] mux_out2;

    always @(posedge clk)
    begin
			//$display("result = %d" ,finalResult);
        if (we) begin
            finalResult <= temp;
        end
    end

    always @(posedge clk)
    begin
        mux_out1 = s ? temp : a;
        mux_out2 = b;
        temp = mux_out1 - mux_out2;

        if ((mux_out1 - b) < mux_out2) begin
            x = 1;
        end else begin
            x = 0;
        end
    end
endmodule
