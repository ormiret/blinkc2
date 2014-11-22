module blinkc2(
	             input clk,
	             output [2:0] led
	             );
	
	 reg [23:0] cnt;
	 always @(posedge clk) cnt <= cnt + 24'd1;
	
	 assign led[2] = cnt[23];
   assign led[1] = cnt[22];
   assign led[0] = cnt[21];
	
	endmodule