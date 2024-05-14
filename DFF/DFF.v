// Sequential logic
// D type negative edge triggered flip flop
module dff_ne(D,clock,Q,Qbar);

    input D, clock;
    output reg Q, Qbar;

    always @(negedge clock)
        begin
            Q=D;
            Qbar= ~D;
        end
    
endmodule