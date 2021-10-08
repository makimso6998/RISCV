module PC(
    input [31:0] port_in,
    input clock,
    output reg [31:0] port_out
);
always @(posedge clock) begin
  port_out <= port_in;
end
endmodule
