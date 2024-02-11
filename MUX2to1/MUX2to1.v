module MUX2to1(in1,in0,s,o);

    input in1,in0,s;
    output reg o; 
    
    always @ (in1, in0, s)
        if (s)
            o = in1;
        else
            o = in0;
endmodule

// always @ (in1 or in0 or s)
// always @ (*)
