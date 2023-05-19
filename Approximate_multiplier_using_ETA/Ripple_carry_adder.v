module half_adder( a,b, sum, cout );
input a,b;
output sum, cout;
xor x1 (sum,a,b);
and a1 (cout,a,b);
endmodule

module full_adder(a,b,cin,sum, cout);
input a,b,cin;
output sum, cout;
wire x,y,z;
half_adder h1(.a(a), .b(b), .sum(x), .cout(y));
half_adder h2(.a(x), .b(cin), .sum(sum), .cout(z));
or a1(cout,z,y);
endmodule

module ripple_carry4(a, b, cin, sum, cout);
input [3:0] a,b;
input cin;
wire c1,c2,c3;
output [3:0] sum;
output cout;

full_adder fa0(.a(a[0]), .b(b[0]),.cin(cin), .sum(sum[0]),.cout(c1));
full_adder fa1(.a(a[1]), .b(b[1]), .cin(c1), .sum(sum[1]),.cout(c2));
full_adder fa2(.a(a[2]), .b(b[2]), .cin(c2), .sum(sum[2]),.cout(c3));
full_adder fa3(.a(a[3]), .b(b[3]), .cin(c3), .sum(sum[3]),.cout(cout));
endmodule

module ripple_carry16(a, b, cin,sum, cout);
input [15:0] a,b;
input cin;
output [15:0] sum;
output cout;
wire c1,c2,c3;

ripple_carry4 A1 (.a(a[3:0]),.b(b[3:0]),.cin(cin),.sum(sum[3:0]),.cout(c1));

ripple_carry4 A2(.a(a[7:4]),.b(b[7:4]),.cin(c1),.sum(sum[7:4]),.cout(c2));

ripple_carry4 A3(.a(a[11:8]),.b(b[11:8]),.cin(c2),.sum(sum[11:8]),.cout(c3));

ripple_carry4 A4(.a(a[15:12]),.b(b[15:12]),.cin(c3),.sum(sum[15:12]),.cout(cout));
endmodule

