module tb_eight_bit_register;

logic clk;
logic reset;
logic [7:0] d;
logic [7:0] q;

eight_bit_register uut (
    .clk(clk),
    .reset(reset),
    .d(d),
    .q(q)
);

always #5 clk = ~clk;

initial
begin
    clk = 0;
    reset = 1;
    d = 8'b00000000;

    #10 reset = 0;
    d = 8'b10101010;

    #10 d = 8'b11001100;

    #10 d = 8'b11110000;

    #10 d = 8'b11111111;

    #10 $stop;
end

endmodule