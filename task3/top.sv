module top #(
    parameter WIDTH = 16
)(
    input logic rst,
    input logic en,
    input logic clk,
    input logic [WIDTH-1:0] Nvalue,
    output logic [7:0] data_out
);

clktick clocktick (
    .clk (clk),
    .rst (rst),
    .en (en),
    .N (Nvalue),
    .tick (tick)    // tick output
);

f1_fsm f1tick (
    .rst (rst),
    .en (tick),
    .clk (clk),
    .data_out (data_out)
);

endmodule
