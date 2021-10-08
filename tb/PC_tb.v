`timescale 1ns/1ps
module PC_tb;
    reg [31:0] port_in;
    reg clock;
    wire [31:0]port_out;

    PC pc (.port_in(port_in), .clock(clock), .port_out(port_out));
    initial begin
        #10 port_in = 32'h0000_1111;
        #35 port_in = 32'h1111_1111;
        #0 clock = 1'b0;
    end
     always begin
        #10 clock = !clock;
    end
endmodule