// 32 x 32 register file

module regbanktest;
    reg write, clk, reset;
    reg [4:0] sr1, sr2, dr;
    reg [31:0] wrData;
    wire [31:0] rdData1, rdData2;
    integer k;

    regbank REG(rdData1, rdData2, wrData, sr1, sr2, dr, write, reset, clk);

    initial clk=0;

    always #5 clk = ~clk;

    initial 
        begin
            $dumpfile("RegisterFile.vcd");
            $dumpvars(0,regbanktest);
            #1 reset=1; write =0;
            #5 reset=0;
        end
    
    initial 
        begin
            #7
            for(k=0; k<32; k=k+1)
                begin
                    dr=k; 
                    wrData= k+100;
                    write=1;
                    #10 write=0;
                end 

            #20  
            for(k=0; k<32; k=k+2)
                begin
                    sr1=k; 
                    sr2=k+1;
                    #5;
                    $display("reg[%d]=%d,reg[%d]=%d",sr1,rdData1,sr2,rdData2);
                end 
            
            #2000 $finish;
        end
endmodule