module ROMControl_tb;
    parameter WIDTH_ADD = 6;
    parameter WIDTH_DATA = 20;
    reg [WIDTH_ADD - 1:0] Addr;
    wire [WIDTH_DATA - 1:0] Data;

    ROMControl Rom1 (.Addr(Addr),
                     .Data(Data));

    initial begin
        Addr = 6'd0;
    end

    always begin
        #20 Addr = Addr + 1;
    end
endmodule