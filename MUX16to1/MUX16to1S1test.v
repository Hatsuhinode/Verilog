module muxtest;
    reg [15:0]I;
    reg [3:0]S;
    wire O;

    mux16to1S1 M(.in(I),.sel(S),.out(O));

    initial
        begin
            $dumpfile("MUX16to1S1.vcd");
            $dumpvars(0,muxtest);
            $monitor($time,"I=%h,S=%h,O=%b",I,S,O);
            #5 I=16'h30ab;S=4'h3;
            #5 S=4'h0;
            #5 S=4'h5;
            #5 S=4'hc;
            #5 $finish;
        end
endmodule