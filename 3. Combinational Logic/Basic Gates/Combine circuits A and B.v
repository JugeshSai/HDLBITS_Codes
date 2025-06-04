module top_module (input x, input y, output z);
    wire a,b,c,d;
    A IA1(x,y,a);
    B IA2(x,y,b);
    A IA3(x,y,c);
    B IA4(x,y,d);
    assign z=(a|b)^(c&d); 

endmodule
module A(input x, input y, output z);
    assign z=(x^y) & x;
endmodule
module B( input x, input y, output z );
    assign z= ~(x^y);
endmodule
