module top_module( 
    input [99:0] a, b,
    input cin,
    output cout,
    output [99:0] sum );
    genvar i;
    wire [98:0]cout1;
    FA FA1(a[0],b[0],cin,cout1[0],sum[0]);
    FA FA2(a[99],b[99],cout1[98],cout,sum[99]);
    generate
        for (i=1; i<99; i=i+1) begin : Full_adder_block
            FA FA0(a[i],b[i],cout1[i-1],cout1[i],sum[i]);
    end
endgenerate
endmodule
module FA(
    input a,b,
    input cin,
    output cout,sum);
	
    assign sum  = a^b^cin;
    assign cout = (a&b)|(b&cin)|(cin&a);
endmodule
