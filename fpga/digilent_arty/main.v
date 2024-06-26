module top (
    input  wire clk,
    input  wire reset,
    input  wire rx,
    output wire tx,
    output wire [7:0]led,
    input  wire [5:0]gpios
);

reg clk_o;

initial begin
    clk_o = 1'b0; // 50mhz
end

always @(posedge clk) begin
    clk_o = ~clk_o;
end

endmodule
