module FSM_1bit (x, clk, rst, state);
    input x, clk, rst;
    output reg state;
    parameter T = 1'b1, NT = 1'b0;
initial begin
    state = 1'b0;
end
always @(posedge clk, posedge rst) begin
    if (rst)
    state <= NT;
    else
    begin
    case (state)
    T: if (x) state <= T;
        else state <= NT;
    NT: if (x) state <= T;
        else state <= NT;
    endcase
    end 
end
endmodule