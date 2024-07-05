`timescale 1ns/10ps
module test;
reg clk;
reg clrn;
wire [1:0] Q;
s1113341_lab08_2 DUT (.clk(clk), .clrn(clrn), .Q(Q));

initial 
    begin
		clk  = 0;
		clrn = 0;
	end
	
initial
	forever begin
		#50;
		clk = ~clk;
	end
	
initial
	forever begin 
		#100; 
		clrn = 1; 
		#500; 
		clrn = 0;
	end
 
endmodule