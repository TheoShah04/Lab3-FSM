module lfsr(
    input   logic       clk,
    input   logic       rst,
    input   logic       en,
    output  logic [6:0] data_out
);
logic [7:1] sreg;
always_ff @ (posedge clk, posedge rst)
    if (rst)
        sreg <= 4'b1;
    else
        if (en)
            sreg <= {sreg[7:1], sreg[7] ^ sreg[3]};
assign data_out = sreg;
endmodule
