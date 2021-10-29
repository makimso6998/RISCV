`timescale 1ns/1ps
module FSM_1bit_tb;
    reg x;
    reg clk;
    reg rst;
    wire state;

FSM_1bit fsm_1bit (.x(x), .clk(clk), .rst(rst), .state(state));
initial begin
     #0 clk = 1'b0;
     #5 x = 1'b0;
     #15 x = 1'b1;
     #25 x = 1'b0;
     #40 x = 1'b0;
     #50 x = 1'b1;
     #60 rst = 1'b1;
end
 always begin
        #10 clk = !clk;
    end
endmodule