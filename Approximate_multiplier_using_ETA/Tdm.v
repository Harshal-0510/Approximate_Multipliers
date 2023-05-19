module fa_df(input a,b,cin,output sum,cout);
assign sum=a^b^cin;
assign cout=cin&(a^b)|(a&b);
endmodule
module ha_df(input a,b,output sum,cout);
assign sum=a^b;
assign cout=a&b;
endmodule
module tdm_tree_8(x0,x1,x2,x3,x4,c0,c1,c2,sum,cout);
input x0,x1,x2,x3,x4,c0,c1,c2;
output  sum,cout;
wire s0,s1,s2,c4,c5,c6;
fa_df m1(x0,x1,x2,s2,c6);
fa_df m2(x3,x4,c2,s1,c5);
ha_df m3(c0,c1,s0,c4);
fa_df m4(s0,s1,s2,sum,cout);
endmodule
