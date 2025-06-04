module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0]sum0,sum1,sum2,tot_sum;
    wire cout0;
    add16 inst1(a[15:0],b[15:0],1'b0,sum0,cout0);
    add16 inst2(a[31:16],b[31:16],1'b1,sum1);
    add16 inst3(a[31:16],b[31:16],1'b0,sum2);
    assign tot_sum=cout0?sum1:sum2;
    assign sum={tot_sum,sum0};
endmodule
