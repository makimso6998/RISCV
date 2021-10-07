module PC(
    input [31:0] port_in,
    input rst,
    input clock,
    output reg [31:0] port_out
);
always @(posedge clock, negedge rst) begin
  if(!rst) begin
  port_out =32'd0;
  end
  else
  port_out <= port_in;
end
endmodule
