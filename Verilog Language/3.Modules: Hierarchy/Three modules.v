
module top_module ( input clk, input d, output q );
    wire a,b;
    my_dff ins1(clk,d,a);
    my_dff ins2(clk,a,b);
    my_dff ins3(clk,b,q);

endmodule
