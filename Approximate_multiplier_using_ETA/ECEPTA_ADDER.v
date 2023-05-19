module ECEPTA_adder (input reg [15:0] a,input reg [15:0] b ,output [15:0]s,output Cin);
wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,
w12,w13,w14,w15,w16,w17,w18,w19,w20,w21,
w22,w23,w24,w25,w26,w27,w28,w29,w30,w31,w32;

or or0 (s[0],a[0],b[0]);
and a0 (w1,a[0],b[0]);

and a1 (w2,a[1],b[1]);
or or1 (w3,a[1],b[1]);

and a2 (w4,a[2],b[2]);
or or2 (w5,a[2],b[2]);

and a3 (w6,a[3],b[3]);
or or3 (w7,a[3],b[3]);

and a4 (w8,a[4],b[4]);
or or4 (w9,a[4],b[4]);

and a5 (w10,a[5],b[5]);
or or5 (w11,a[5],b[5]);

and a6 (w12,a[6],b[6]);
or or6 (w13,a[6],b[6]);

and a7 (w14,a[7],b[7]);
or or7 (w15,a[7],b[7]);

and a8 (w16,a[8],b[8]);
or or8 (w17,a[8],b[8]);

and a9 (w18,a[9],b[9]);
or or9 (w19,a[9],b[9]);

and a10 (w20,a[10],b[10]);
or or10 (w21,a[10],b[10]);

and a11 (w22,a[11],b[11]);
or or11 (w23,a[11],b[11]);

and a12 (w24,a[12],b[12]);
or or12 (w25,a[12],b[12]);

and a13 (w26,a[13],b[13]);
or or13 (w27,a[13],b[13]);

and a14 (w28,a[14],b[14]);
or or14 (w29,a[14],b[14]);

and a15 (w30,a[15],b[15]);
xor xor15 (w31,a[15],b[15]);



or Or1 (s[1],w1,w3);

or Or2 (s[2],w2,w5);

or Or3 (s[3],w4,w7);

or Or4 (s[4],w6,w9);

or Or5 (s[5],w8,w11);

or Or6 (s[6],w10,w13);

or Or7 (s[7],w12,w15);

or Or8 (s[8],w14,w17);

or Or9 (s[9],w16,w19);

or Or10 (s[10],w18,w21);

or Or11 (s[11],w20,w23);

or Or12 (s[12],w22,w25);

or Or13 (s[13],w24,w27);

or Or14 (s[14],w26,w29);

or Or15 (s[15],w28,w31);



and ACin (w32,w31,w28);

or ORCin (Cin,w30,w32);

endmodule
