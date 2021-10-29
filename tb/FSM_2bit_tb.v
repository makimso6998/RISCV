`timescale 1ns/1ps
module FSM_2bit_tb;
    reg x;
    reg clk;
    reg rst;
    wire [1:0] state;

FSM_2bit fsm_2bit (.x(x), .clk(clk), .rst(rst), .state(state));
initial begin
     #0 clk = 1'b0;
     #10 x = 1'b0;
     #15 x = 1'b1;
     #23 x = 1'b0;
     #40 x = 1'b0;
     #50 x = 1'b1;
     #60 x = 1'b0;
     #70 x = 1'b0;
     #80 rst = 1'b1;
end
 always begin
        #10 clk = !clk;
    end
endmodule