module Mux (
input sel_op,
input [1:0] sel_port,
input   [31:0] port_in_0,
input   [31:0] port_in_1,
input   [31:0] port_in_2,
input   [31:0] port_in_3,
output reg [31:0] port_out 
);

always @(*) begin
  if (!sel_op)
    begin
      case ({1'b0,sel_port[0]})
      2'd0: port_out <= port_in_0;
      2'd1: port_out <= port_in_1;

      endcase

    end
    else begin
      case (sel_port)
      2'd0: port_out <= port_in_0;
      2'd1: port_out <= port_in_1;
      2'd2: port_out <= port_in_2;
      2'd3: port_out <= port_in_3;
      endcase
    end
end

endmodule 
