`timescale 1ns/1ps

module counter_design_tb;

reg clk;
reg reset;

wire [3:0] Q;

synchronous_counter uut (
    .clk(clk),
    .reset(reset),
    .Q(Q)
);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin

    $dumpfile("counter_design.vcd");
    $dumpvars(0, counter_design_tb);

    reset = 1;
    #10;

    reset = 0;

    #100;

    $finish;
end

endmodule