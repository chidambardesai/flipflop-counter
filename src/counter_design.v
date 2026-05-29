module d_flipflop(
    input clk,
    input reset,
    input D,
    output reg Q
);

always @(posedge clk or posedge reset)
begin
    if (reset)
        Q <= 0;
    else
        Q <= D;
end

endmodule


module synchronous_counter(
    input clk,
    input reset,
    output [3:0] Q
);

wire q0, q1, q2, q3;

d_flipflop FF0(clk, reset, ~q0, q0);
d_flipflop FF1(clk, reset, q1 ^ q0, q1);
d_flipflop FF2(clk, reset, q2 ^ (q0 & q1), q2);
d_flipflop FF3(clk, reset, q3 ^ (q0 & q1 & q2), q3);

assign Q = {q3, q2, q1, q0};

endmodule