module compressor5_3ex(input p0,p2,p3,p4,p1, output w1,w2,w3); //  p4,p3,p2,p1,p0, output w3,w2,w1);
    wire a1,a2;
    and u1(a1 , p0 , p1);      //assign a1 = p0 & p1;
    and u2(a2 , p2 , p3);      //assign a2 = p2 & p3;
    or u3(w3 , p0 , p1);       //assign w3 = p0 | p1;
    or u4(w1 , a1 , p2 , p3);  //assign w1 = a1 | p2 | p3;
    or u5(w1 , a2 , p4);       //assign w2 = a2 | p4;
endmodule
module FA(input [2:0]p, output [2:1]w   );  // w[2] = carry ;  w[1] =sum
   xor sum(w[1], p[2],p[1],p[0]);
   wire ab,bc,ca;
   and a1(ab,p[2],p[1]);
   and a2(bc,p[1],p[0]);
   and a3(ca,p[0],p[2]);
   or carry(w[2], ab,bc,ca);
endmodule

module HA(input [1:0]p, output [2:1]w);
    xor sum(w[1],p[0],p[1]);
    and carry(w[2],p[0],p[1]);
endmodule

module compressor2_2(input p1,p0, output w0,w1); //  p2,p1,p0, output w1,w2);
	assign w0=p1^p0;
	assign w1=p0&p1;
endmodule

module compressor3_2(input p2,p1,p0, output w1,w0); //  p2,p1,p0, output w1,w2);
 wire a1;
and u1(a1 , p0 , p1); //assign a1 = p0 & p1;
    or  u2(w1 , a1 , p2);  //assign w2 = a1 | p2;
    or  u3(w0 , p0 , p1); //assign w1 = p0 |p1;
endmodule

module compressor4_2(input p3,p2,p1,p0, output w1,w0);  // p3,p2,p1,p0, output w2,w1);
    wire a1,a2;
assign a1 = p0 & p1;
assign a2 = p2 & p3;
assign w1 = a1 | p2 | p3;
assign w0 = a2 | p0 | p1;
endmodule

module compressor5_3(input p4,p3,p2,p1,p0, output w2,w1,w0); //  p4,p3,p2,p1,p0, output w3,w2,w1);
 wire a1,a2;
 assign a1 = p0 & p1;
 assign a2 = p2 & p3;
 assign w2 = p0 | p1;
 assign w0 = a1 | p2 | p3;
 assign w1 = a2 | p4;
endmodule

module compressor6_3(input p5,p4,p3,p2,p1,p0, output w2,w1,w0);
    wire a1,a2,a3;
    assign a1 = p0 & p1;
    assign a2 = p2 & p3;
    assign a3 = p4 & p5;
    assign w0 = a1 | p2 | p3;
    assign w2 = a2 | p4 | p5;
    assign w1 = a3 | p0 | p1;
endmodule

module compressor7_4(input p6,p5,p4,p3,p2,p1,p0, output w3,w2,w1,w0);
 compressor4_2 u1(.p3(p6),.p2(p5),.p1(p4),.p0(p3),.w1(w3),.w0(w2));
  compressor3_2 u2(.p2(p2),.p1(p1),.p0(p0), .w1(w1),.w0(w0));
endmodule

module compressor8_4(input p7,p6,p5,p4,p3,p2,p1,p0, output w3,w2,w1,w0);
    compressor4_2 u1(.p3(p7),.p2(p6),.p1(p4),.p0(p5),.w1(w3),.w0(w2));
    compressor4_2 u2(.p3(p3),.p2(p2),.p1(p1),.p0(p0),.w1(w1),.w0(w0));
endmodule

module compressor8_2 (input p7,p6,p5,p4,p3,p2,p1,p0, output w1,w0);
	wire x4,x3,x2,x1;

compressor4_2 u1(.p3(p7),.p2(p6),.p1(p4),.p0(p5),.w1(x4),.w0(x3));
compressor4_2 u2(.p3(p3),.p2(p2),.p1(p1),.p0(p0), .w1(x2),.w0(x1));
compressor4_2 u3(.p3(x4),.p2(x3),.p1(x2),.p0(x1), .w1(w1),.w0(w0));

endmodule

module compressor7_2(input p6,p5,p4,p3,p2,p1,p0, output w1,w0);
	wire x4,x3,x2,x1;
    	compressor4_2 u1(.p3(p6),.p2(p5),.p1(p4),.p0(p3),.w1(x4),.w0(x3));
	compressor3_2 u3(.p2(p2),.p1(p1),.p0(p0),.w1(x2),.w0(x1));
	compressor4_2 u2(.p3(x4),.p2(x3),.p1(x2),.p0(x1),.w1(w1),.w0(w0));
	
   
endmodule

module compressor6_2(input p5,p4,p3,p2,p1,p0, output w1,w0);
	wire x4,x3,x2,x1;
compressor3_2 u1(.p2(p5),.p1(p4),.p0(p3),.w1(x4),.w0(x3));
compressor3_2 u2(.p2(p2),.p1(p1),.p0(p0),.w1(x2),.w0(x1));
compressor4_2 u3(.p3(x4),.p2(x3),.p1(x2),.p0(x1), .w1(w1),.w0(w0));
	
   
endmodule

module compressor5_2(input p4,p3,p2,p1,p0, output w1,w0);
	wire x4,x3,x2,x1;
    	compressor3_2 u1(.p2(p4),.p1(p3),.p0(p2),.w1(x4),.w0(x3));
	compressor2_2 u2(.p1(p1),.p0(p0), .w1(x2),.w0(x1));
	compressor4_2 u3(.p3(x4),.p2(x3),.p1(x2),.p0(x1), .w1(w1),.w0(w0));
	
   
endmodule
