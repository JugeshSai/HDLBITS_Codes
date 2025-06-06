module top_module( 
    input [3:0] in,
    output [2:0] out_both,
    output [3:1] out_any,
    output [3:0] out_different );
    assign out_both=in[3:1]&in[2:0];
    assign out_any=in[3:1]|in[2:0];
    assign out_different[3] = in[3] ^ in[0];// (wrap-around)
    assign out_different[2] = in[2] ^ in[3];
    assign out_different[1] = in[1] ^ in[2];
    assign out_different[0] = in[0] ^ in[1];

endmodule
