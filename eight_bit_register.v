module eight_bit_register(
    input logic clk,
    input logic reset,
    input logic [7:0] d,
    output logic [7:0] q
);

always_ff @(posedge clk or posedge reset)
begin
    if (reset)
        q <= 8'b00000000;
    else
        q <= d;
end

endmodule