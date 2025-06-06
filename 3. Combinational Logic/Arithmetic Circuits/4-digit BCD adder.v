module top_module ( 
    input [15:0] a, b,
    input cin,
    output cout,
    output [15:0] sum );
    wire con1[2:0];
    
    bcd_fadd Badd1(a[3:0],b[3:0],cin,con1[0],sum[3:0]);
    bcd_fadd Badd2(a[7:4],b[7:4],con1[0],con1[1],sum[7:4]);
    bcd_fadd Badd3(a[11:8],b[11:8],con1[1],con1[2],sum[11:8]);
    bcd_fadd Badd4(a[15:12],b[15:12],con1[2],cout,sum[15:12]);

endmodule
