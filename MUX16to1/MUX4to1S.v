module mux4to1S (in,sel,out);
    input [3:0]in;
    input [1:0]sel;
    output out;
    wire [1:0]t;

    mux2to1 M0(in[1:0],sel[1],t[0]);
    mux2to1 M1(in[3:2],sel[1],t[1]);
    mux2to1 M2(t[1:0],sel[0],out);    
endmodule