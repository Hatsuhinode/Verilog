module  muxtest;

    reg i1, i0;
    reg s;
    wire o;

    MUX2to1 M(i1,i0,s,o);

    initial 
        begin 
            $dumpfile("MUX2to1.vcd");
            $dumpvars(0,muxtest);
            $monitor($time,"i1=%b , i0=%b , o = %b",i1,i0,o);
            #5 i1=1'b1; i0=1'b0; s=1'b0;
            #5 s=1'b1;
            #5 $finish;
        end

endmodule