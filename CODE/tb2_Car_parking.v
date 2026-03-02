`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:54:00 11/25/2021
// Design Name:   Car_Parking
// Module Name:   C:/xilinx/CAR_PARKING/tb2_Car_parking.v
// Project Name:  CAR_PARKING
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Car_Parking
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb2_Car_parking;

	// Inputs
	reg clk;
	reg rst;
	reg sensor_entrance;
	reg sensor_exit;
	reg [1:0] ss1;
	reg [1:0] ss2;
	reg [1:0] password_1;
	reg [1:0] password_2;

	// Outputs
	wire GREEN_LED;
	wire RED_LED;
	wire [3:0] SLOT_NUM;
	wire [15:0] DISTANCE;

	// Instantiate the Unit Under Test (UUT)
	Car_Parking uut (
		.clk(clk), 
		.rst(rst), 
		.sensor_entrance(sensor_entrance), 
		.sensor_exit(sensor_exit), 
		.ss1(ss1), 
		.ss2(ss2), 
		.password_1(password_1), 
		.password_2(password_2), 
		.GREEN_LED(GREEN_LED), 
		.RED_LED(RED_LED), 
		.SLOT_NUM(SLOT_NUM), 
		.DISTANCE(DISTANCE)
	);

	initial begin
		// Initialize Inputs
		clk = 1;
		rst = 1;
		sensor_entrance = 1;
		sensor_exit = 0;
		ss1 = 01;
		ss2 = 10;
		password_1 = 00;
		password_2 = 00;

		// Wait 100 ns for global reset to finish
		#100;
      ss1 = 11;
		ss2 = 10;
		password_1 = 10;
		password_2 = 10;
		
		#100;
      ss1 = 00;
		ss2 = 00;
		password_1 = 01;
		password_2 = 10;
		
		#100;
      ss1 = 11;
		ss2 = 11;
		password_1 = 01;
		password_2 = 01;
		// Add stimulus here
		#100;
      ss1 = 10;
		ss2 = 01;
		password_1 = 01;
		password_2 = 10;
		
		#100;
		sensor_exit =1;
		sensor_entrance =0;
      ss1 = 10;
		ss2 = 01;
		password_1 = 01;
		password_2 = 10;

	end
      always #20
		clk = ~clk;
endmodule
