module alu
(
	input [3:0] A,
	input [3:0] B,
	input [1:0] sel,
	
	output reg [4:0] aluo
);

always@(A or B or sel)
	begin

		if (sel == "00")
			aluo = A or B;
		else if (sel = "01")
			aluo = A and B;
		else if (sel = "10")
			aluo = A - B;
		else if (sel = "11")
			aluo = A + B;
		end;
	end;
endmodule;