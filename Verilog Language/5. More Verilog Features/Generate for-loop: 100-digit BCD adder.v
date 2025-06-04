module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );
    wire [99:0] cout_temp;
    
    bcd_fadd ints0(a[3:0],b[3:0],cin,cout_temp[0],sum[3:0]);
    genvar i;
    generate 
        for(i=4;i<400;i=i+4) begin:bcd_fadd_namingblock
            bcd_fadd inst1(a[i+3:i],b[i+3:i],cout_temp[i/4-1],cout_temp[i/4],sum[i+3:i]); end
        //here we use 4 as a method to do BCD with 4 digits a 100 times.
    endgenerate
    assign cout=cout_temp[99];

endmodule
