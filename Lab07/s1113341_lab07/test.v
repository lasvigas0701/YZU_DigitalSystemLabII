`timescale 1ns/10ps

module test;

    reg [3:0] A, B;
    reg [1:0] sel;
    wire [4:0] aluo;
    
    s1113341_lab07 DUT (
        .A(A),
        .B(B),
        .sel(sel),
        .aluo(aluo)
    );

    initial begin
        // initialize
        A <= 4'b0111;
        B <= 4'b1000;
        sel <= 2'b00;
        
        // loop
        repeat (10) begin
            //each 50000 ps
            #50;
            A <= A + 1;
            B <= B + 1;
            sel <= sel + 1;
        end
    end

endmodule