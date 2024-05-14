module SDtest;

    reg x,clk,reset;
    SD sequenceDetector (x,clk,reset,z);

    initial 
        begin
            $dumpfile("SD.vcd");
            $dumpvars(0,SDtest); 
            #15 reset = 1'b0;           
        end

    always #5 clk = ~clk;

    initial
        begin
            #12 x=0;
            #10 x=0;
            #10 x=1;
            #10 x=1;
            #10 x=0;
            #10 x=1;
            #10 x=1;
            #10 x=0;
            #10 x=0;
            #10 x=1;
            #10 x=1;
            #10 x=0;
            #10 $finish;
        end

endmodule