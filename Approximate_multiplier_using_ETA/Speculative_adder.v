module Speculative_Adder (input reg [31:0]af,input reg [31:0]bf, input Cin, 
output reg [31:0]S, output Cout);
wire [15:0] w1,w2,w3,w5;
wire w4;

assign w1=af;
assign w2=bf;

ECEPTA_adder A5 (.a(w1),.b(w2),.s(w3),.Cin(w4));
assign Cin=w4;

ripple_carry16 RC1(.a(af),.b(bf),.cin(Cin),.sum(w5),.cout(Cout));

assign S=w5;

endmodule
