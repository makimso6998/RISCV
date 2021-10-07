`timescale 1ns/1ps
module branch_comp_tb;
wire BrEq;
wire BrLt;
reg BrUn;
reg [31:0] A;
reg [31:0] B;

branch_comp branch_comp (.BrEq(BrEq),
                        .BrLT(BrLT),
                        .BrUn(BrUn),
                        .A(A),
                        .B(B));
initial begin
    #10 A = 32'h0000_1111;
    #10 B = 32'h1000_1111;
    #10 BrUn = 1'b1;
end
endmodule