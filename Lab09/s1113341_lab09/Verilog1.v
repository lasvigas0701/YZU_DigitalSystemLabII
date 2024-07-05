`timescale 1ns/10ps
module test;
reg load, clk, en, clrn;
reg [2:0] Da;
reg [3:0] Db;
wire Co;
wire [2:0] qa;
wire [3:0] qb;
lab09 DUT (.load(load), .clk(clk), .en(en), .clrn(clrn),
               .Da(Da), .Db(Db), .Co(Co), .qa(qa), .qb(qb));

always #25 clk = ~clk;
initial begin
    // Initialize inputs
    load = 1;
    en = 1;
    clrn = 0;
    clk = 0;
    Da = 3'b101;
    Db = 4'b0111;
    
    #50;
    load = 0;
    #250;
    en = 0;
    #100;
    en = 1;
    #300;
    clrn = 1;
    #100;
    clrn = 0;
end
endmodule