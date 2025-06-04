module top_module( 
    input [99:0] a, b,
    input cin,
    output reg [99:0] cout,
    output reg [99:0] sum);
    fa fa0(a[0],b[0],cin,cout[0],sum[0]);
    genvar i;
    generate 
        for(i=1;i<$bits(sum);i++) begin:fa1
            fa insta0(a[i],b[i],cout[i-1],cout[i],sum[i]); end
    endgenerate
endmodule
module fa(input a,input b,cin,output cout,sum);
    assign sum=a^b^cin;
    assign cout=(a&b)|(a&cin)|(b&cin);
endmodule
