 module branch_comp (A,B,BrUn,BrEq,BrLT);
 input [31:0] A,B;
 input BrUn ;
 output BrEq,BrLT;

assign BrEq = (A == B);
assign BrLT = (A < B) ;
endmodule 
