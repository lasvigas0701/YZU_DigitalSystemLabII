module lab13_G06 (
    input clk,
    output [7:0] hex0,
    output [7:0] hex1,
    output [7:0] hex2,
    output [7:0] hex3
);

    reg [3:0] min_tens = 4'b0101;  // Initial value 5
    reg [3:0] min_units = 4'b1000; // Initial value 8
    reg [3:0] sec_tens = 4'b0101;  // Initial value 5
    reg [3:0] sec_units = 4'b0111; // Initial value 7

    // Divide by 100 Hz virtual divider
    reg slow_clk = 0;
    parameter DIVIDER_VALUE = 25000000;  // 100 Hz when clk is 50 MHz (change as needed)

    reg [24:0] count = 0;

    // Seven segment display decoder function
    function [6:0] bcd_to_segment;
        input [3:0] bcd;
        case (bcd)
            4'b0000: bcd_to_segment = 7'b1000000; // 0
            4'b0001: bcd_to_segment = 7'b1111001; // 1
            4'b0010: bcd_to_segment = 7'b0100100; // 2
            4'b0011: bcd_to_segment = 7'b0110000; // 3
            4'b0100: bcd_to_segment = 7'b0011001; // 4
            4'b0101: bcd_to_segment = 7'b0010010; // 5
            4'b0110: bcd_to_segment = 7'b0000010; // 6
            4'b0111: bcd_to_segment = 7'b1011000; // 7
            4'b1000: bcd_to_segment = 7'b0000000; // 8
            4'b1001: bcd_to_segment = 7'b0011000; // 9
            default: bcd_to_segment = 7'b1111111; // Invalid input (all segments off)
        endcase
    endfunction

    // Slow clock generation process (virtual divider)
    always @(posedge clk) begin
        if (count == DIVIDER_VALUE - 1) begin
            slow_clk <= ~slow_clk;
            count <= 0;
        end else begin
            count <= count + 1;
        end
    end

    // Time counting process based on slow_clk
    always @(posedge slow_clk) begin
        if (sec_units == 4'b1001) begin // 9
            sec_units <= 4'b0000; // 0
            if (sec_tens == 4'b0101) begin // 5
                sec_tens <= 4'b0000; // 0
                if (min_units == 4'b1001) begin // 9
                    min_units <= 4'b0000; // 0
                    if (min_tens == 4'b0101) begin // 5
                        min_tens <= 4'b0000; // 0
                    end else begin
                        min_tens <= min_tens + 1;
                    end
                end else begin
                    min_units <= min_units + 1;
                end
            end else begin
                sec_tens <= sec_tens + 1;
            end
        end else begin
            sec_units <= sec_units + 1;
        end
    end

    // Output to seven segment display
    assign hex3 = {1'b1, bcd_to_segment(min_tens)}; // 7-bit segment output plus decimal point
    assign hex2 = {1'b0, bcd_to_segment(min_units)};
    assign hex1 = {1'b1, bcd_to_segment(sec_tens)};
    assign hex0 = {1'b1, bcd_to_segment(sec_units)};

endmodule

