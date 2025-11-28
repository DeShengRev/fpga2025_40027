module traffic_button_ctrl(
input clk,
input rst_n,
input ped_btn,
output reg [1:0] main_light, // 0:Green, 1:Yellow, 2:Red
output reg [1:0] ped_light, // 0:Red, 1:Green

output reg [4:0]status_cnt,
output reg [4:0]intr_dis_cnt,
output reg intr_dis
);




always @(*) begin
    if (status_cnt <= 9) begin
        main_light <= 2'd0;
        ped_light <= 2'd0; 
        end
    else if (status_cnt <= 12) begin
        main_light <= 2'd1;
        ped_light <= 2'd1;
    end
    else begin
    main_light <= 2'd2;
    ped_light <= 2'd1;
    end
end


always @(posedge clk, negedge rst_n) begin
	if (! rst_n)	begin
		status_cnt <= 5'd13;
	end
	else if (ped_btn && status_cnt <= 9) begin
		status_cnt <= 5'd10;
	end
	else if (status_cnt == 5'd22) begin
		status_cnt <= 5'd0;
	end
	else begin
		status_cnt <= status_cnt + 1'd1;
	end
end


always @(posedge clk, negedge rst_n) begin
	if (! rst_n)	begin
		intr_dis <= 0;
		intr_dis_cnt <= 5'd0;
	end
	else if(intr_dis_cnt == 17)
	begin
		intr_dis_cnt <= 5'd0;
		intr_dis <= 0;
	end
	else if (intr_dis) begin
		intr_dis_cnt <= intr_dis_cnt + 1'd1;
	end
	else if (ped_btn) begin
		intr_dis <= 1;
		intr_dis_cnt <= 5'd0;
	end	
end


endmodule