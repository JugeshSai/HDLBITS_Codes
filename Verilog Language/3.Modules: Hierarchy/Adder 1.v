module top_module(input [31:0] a,b,
    output [31:0] sum
);
    wire cout1;
    wire [15:0] x,y;//Hint: seperate wire to store 2 inputs as given in diagram
    add16 inst1(a[15:0],b[15:0],1'b0,x,cout1);
    add16 inst2(a[31:16],b[31:16],cout1,y);
    assign sum={y,x};
endmodule
