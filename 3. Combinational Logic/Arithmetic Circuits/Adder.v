module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);
    wire cout[3:0];
    fa ins0(x[0],y[0],0,cout[0],sum[0]);
    fa ins1(x[1],y[1],cout[0],cout[1],sum[1]);
    fa ins2(x[2],y[2],cout[1],cout[2],sum[2]);
    fa ins3(x[3],y[3],cout[2],sum[4],sum[3]);
endmodule
module fa( 
    input a, b, cin,
    output cout, sum );
    assign sum=a^b^cin;
    assign cout=(a&b)|(a&cin)|(b&cin);
endmodule
