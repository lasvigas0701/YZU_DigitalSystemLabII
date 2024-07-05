`timescale 1ns / 1ps

module test;

	reg clrn;
    reg clk;
    reg Ldn, Sh;
    reg Di;
	reg D3, D2, D1, D0;
	wire Q3, Q2, Q1, Q0;

    s1113341_lab08_1 DUT(
        .clrn(clrn), 
		.clk(clk), 
		.Ldn(Ldn), 
		.Sh(Sh), 
		.Di(Di), 
		.D3(D3),.D2(D2),.D1(D1),.D0(D0),
		.Q3(Q3),.Q2(Q2),.Q1(Q1),.Q0(Q0)
    );

initial
	begin
        clrn = 1;
        clk = 0;
        Ldn = 1;
        Sh = 0;
        Di = 1;
        D3 = 0;
        D2 = 1;
        D1 = 1;
        D0 = 0;
        #100
        Ldn = 0;
        Sh = 1; 
        
	end
    
initial
	forever begin
        #600
        clrn = 0;
        #100
        clrn = 1; 
	end
    
initial
	forever begin
		#50
		clk = ~clk;
	end
      
endmodule
