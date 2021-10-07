module ALU_tb;
    parameter WIDTH_DATA_LENGTH = 32;
    parameter WIDTH_ALUSEL_LENGTH = 4;
    reg [WIDTH_DATA_LENGTH - 1:0] DataA;
    reg [WIDTH_DATA_LENGTH - 1:0] DataB;
    reg [WIDTH_ALUSEL_LENGTH - 1:0] ALUSel;
    wire [WIDTH_DATA_LENGTH - 1:0] DataOut;

    ALU alu1 (.DataA(DataA),
              .DataB(DataB),
              .ALUSel(ALUSel),
              .DataOut(DataOut));
    initial begin
        #0  ALUSel = 4'b0000;
            DataA = 32'd100;
            DataB = 32'd456;
        #50 DataA = -32'd100;
            DataB = -32'd1235;

    end
endmodule
