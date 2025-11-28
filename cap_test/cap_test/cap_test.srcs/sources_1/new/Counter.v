`timescale 1ns / 1ps

module CounterIn10
#(
	parameter CNT_MAX = 7'd60
)
(
	input clk,
	input rst_n,
	input carry_in,
	input counter_mode, // 1 up, 0 down
	output wire carry_out,
	output reg [3:0]ten_out,
	output reg [3:0]unit_out
);
	
	reg pre_carry_out;
	
	always @(posedge clk, negedge rst_n)
	begin
		if (!rst_n)
		begin
			ten_out <= 4'b0;
			unit_out <= 4'b0;
		end
		else if (!carry_in)
			;
		else if (counter_mode == 1'b1)
		begin
			if (ten_out == (CNT_MAX - 1) / 10 && unit_out == (CNT_MAX - 1 ) % 10)
			begin
				ten_out <= 4'd0;
				unit_out <= 4'd0;
			end
			else if (unit_out == 4'd9)
			begin
				ten_out <= ten_out + 1'd1;
				unit_out <= 4'd0;
			end
			else
				unit_out <= unit_out + 1'd1;
		end
		else if (counter_mode == 1'b0)
		begin
			if (ten_out == 4'd0 && unit_out == 4'd0)
			begin
				ten_out <= (CNT_MAX - 1)/10;
				unit_out <= (CNT_MAX - 1)%10;
			end
			else if (unit_out == 4'd0)
			begin
				ten_out <= ten_out - 1'd1;
				unit_out <= 4'd9;
			end
			else
				unit_out <= unit_out - 1'd1;
		end
		else
			;
	end
	
	always @(posedge clk, negedge rst_n)
	begin
		if (!rst_n) 
			pre_carry_out <= 1'b0;
		else if ((counter_mode == 1'b1) && (ten_out == (CNT_MAX - 1)/10) && (unit_out == (CNT_MAX - 1)%10))
			pre_carry_out <= 1'b1;
		else if ((counter_mode == 1'b0) && (ten_out == 4'd0) && (unit_out == 4'd0))
			pre_carry_out <= 1'b1;
		else
			pre_carry_out <= 1'b0;
	end
	
	assign carry_out = pre_carry_out & carry_in;
	
endmodule