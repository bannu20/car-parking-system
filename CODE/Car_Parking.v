`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:32:51 11/24/2021 
// Design Name: 
// Module Name:    Car_Parking 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Car_Parking( 
 input clk,rst,
 input sensor_entrance, sensor_exit,
 input [1:0]ss1,ss2,
 input [1:0] password_1, password_2,
 output reg GREEN_LED,RED_LED,
 output reg [3:0] SLOT_NUM,
 output reg [15:0]DISTANCE
 
    );
 
 parameter SLOT1= 4'b0001,SLOT2= 4'b0010,SLOT3= 4'b0011,SLOT4= 4'b0100,SLOT5= 4'b0101,SLOT6= 4'b0110,SLOT7= 4'b0111,SLOT8= 4'b1000,
				SLOT9= 4'b1001,SLOT10= 4'b1010,SLOT11= 4'b1011,SLOT12= 4'b1100,SLOT13= 4'b1101,SLOT14= 4'b1110,SLOT15= 4'b1111,
				NO_SLOTS=4'b0000;
 
 
 always @(*)
 begin
 if ((sensor_entrance == 1)&&((password_1==2'b01)&&(password_2==2'b10)))
 begin
 case ({ss1,ss2})
 
 SLOT1 : begin SLOT_NUM = SLOT1;
					DISTANCE = 16'd10;
					GREEN_LED = 1;RED_LED = 0;
					end
 SLOT2 : begin SLOT_NUM = SLOT2;
					DISTANCE = 16'd20;
					GREEN_LED = 1;RED_LED = 0;
					end
 SLOT3 : begin SLOT_NUM = SLOT1;
					DISTANCE = 16'd30;
					GREEN_LED = 1;RED_LED = 0;
					end
 SLOT4 : begin SLOT_NUM = SLOT4;
					DISTANCE = 16'd40;
					GREEN_LED = 1;RED_LED = 0;
					end
 SLOT5 : begin SLOT_NUM = SLOT5;
					DISTANCE = 16'd50;
					GREEN_LED = 1;RED_LED = 0;
					end
 SLOT6 : begin SLOT_NUM = SLOT6;
					DISTANCE = 16'd60;
					GREEN_LED = 1;RED_LED = 0;
					end
 SLOT7 : begin SLOT_NUM = SLOT7;
					DISTANCE = 16'd70;
					GREEN_LED = 1;RED_LED = 0;
					end
 SLOT8 : begin SLOT_NUM = SLOT8;
					DISTANCE = 16'd80;
					GREEN_LED = 1;RED_LED = 0;
					end
 SLOT9 : begin SLOT_NUM = SLOT9;
					DISTANCE = 16'd90;
					GREEN_LED = 1;RED_LED = 0;
					end
 SLOT10 : begin SLOT_NUM = SLOT10;
					DISTANCE = 16'd100;
					GREEN_LED = 1;RED_LED = 0;
					end
 SLOT11 : begin SLOT_NUM = SLOT11;
					DISTANCE = 16'd110;
					GREEN_LED = 1;RED_LED = 0;
					end
 SLOT12 : begin SLOT_NUM = SLOT12;
					DISTANCE = 16'd120;
					GREEN_LED = 1;RED_LED = 0;
					end
 SLOT13 : begin SLOT_NUM = SLOT13;
					DISTANCE = 16'd130;
					GREEN_LED = 1;RED_LED = 0;
					end
 SLOT14 : begin SLOT_NUM = SLOT14;
					DISTANCE = 16'd140;
					GREEN_LED = 1;RED_LED = 0;
					end
 SLOT15 : begin SLOT_NUM = SLOT15;
					DISTANCE = 16'd150;
					GREEN_LED = 1;RED_LED = 0;
					end
 default: begin SLOT_NUM = NO_SLOTS;
					DISTANCE = 16'd0;
					GREEN_LED = 0;RED_LED = 0;
					end
 
endcase
end
else if ((sensor_exit == 1)&&((password_1==2'b01)&&(password_2==2'b10)))//password = 0110
 begin         SLOT_NUM = 4'b0;
					DISTANCE = 16'd0;
					GREEN_LED = 1;RED_LED = 0;
					end

else 
 begin         SLOT_NUM = NO_SLOTS;
					DISTANCE = 16'd0;
					GREEN_LED = 0;RED_LED = 0;
					end


end
endmodule


