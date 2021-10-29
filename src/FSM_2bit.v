module FSM_2bit (x, clk, rst, state);
    input x, clk, rst;
    output reg [1:0] state;
    parameter NTS=2'b00, NTW=2'b01, TW=2'b10, TS=2'b11;
initial begin
    state = 1'b0;
end
always @(posedge clk, posedge rst) begin
    if (rst)
    state <= NTS;
    else
    begin
    case (state)
    NTS: if (x) state <= NTW;
        else state <= NTS;
    NTW: if (x) state <= TS;
        else state <= NTS;
    TW: if (x) state <= TS;
        else state <= NTS;
    TS: if (x) state <= TS;
        else state <= TW;
    endcase
    end 
end
endmodule