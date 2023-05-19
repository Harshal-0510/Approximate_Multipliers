module multiplier(a, b, p);
    input [16:0] a, b;
    output [31:0] p;
    wire [73:1]w;
    wire [15:0] A,B,C,D;
    wire [15:1]c;
    wire [31:0] z,y,z1,y1,z2,y2;
wire s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12;
wire ora010,ora19, ora28, ora37, ora46 ,ora011, ora110, ora29, ora38, ora47, ora56, ora012, ora111, ora210, ora39, ora48,ora57, ora013, ora112, ora211, ora310,ora49, ora58, ora014, ora113, ora212, ora311, ora410, ora59,ora68, ora015, ora114,ora213, ora312, ora411, ora510, ora69, ora78, ora115, ora214, ora313, ora412, ora511, ora610, ora79, ora215, ora314, ora413, ora512, ora611, ora710, ora89, ora315, ora414, ora513, ora612, ora711,ora810,ora415, ora514, ora613, ora712, ora811, ora910, ora515, ora614, ora713,ora812,ora911,ora615,ora714,ora813,ora912,ora1011;
wire ana010,ana19, ana28, ana37, ana46 ,ana011, ana110, ana29, ana38, ana47, ana56, ana012, ana111, ana210, ana39, ana48,ana57, ana013, ana112, ana211, ana310,ana49, ana58, ana014, ana113, ana212, ana311, ana410, ana59,ana68, ana015, ana114,ana213, ana312, ana411, ana510, ana69, ana78, ana115, ana214, ana313, ana412, ana511, ana610, ana79, ana215, ana314, ana413, ana512, ana611, ana710, ana89, ana315, ana414, ana513, ana612, ana711,ana810,ana415, ana514, ana613, ana712, ana811, ana910, ana515, ana614, ana713,ana812,ana911,ana615,ana714,ana813,ana912,ana1011;
wire se1,se2,se3,se4,se5,se6,se7,se8,se9,se10,se11,se12,ce1,ce2,ce3,ce4,ce5,ce6,ce7,ce8,ce9,ce10,ce11,ce12;
wire sa1,sa2,sa3,sa4,sa5,sa6,sa7,sa8,sa9,sa10,sa11,sa12,ca1,ca2,ca3,ca4,ca5,ca6,ca7,ca8,ca9,ca10,ca11,ca12;
wire sea1,sea2,sea3,sea4,sea5,sea6,sea7,sea8,sea9,sea10,sea11,sea12;
assign p0=(a[0]&b[0]);
assign ora010=(a[10]&b[0])|(a[0]&b[10]);
assign ora19=(a[1]&b[9])|(a[9]&b[1]);
assign ora28=(a[2]&b[8])|(a[8]&b[2]);
assign ora37=(a[3]&b[7])|(a[7]&b[3]);
assign ora46=(a[4]&b[6])|(a[6]&b[4]);
assign ora011=(a[0]&b[11])|(a[11]&b[0]);
assign ora110=(a[1]&b[10])|(a[10]&b[1]);
assign ora29=(a[2]&b[9])|(a[9]&b[2]);
assign ora38=(a[3]&b[8])|(a[8]&b[3]);
assign ora47=(a[4]&b[7])|(a[7]&b[4]);
assign ora56=(a[5]&b[6])|(a[6]&b[5]);
assign ora012=(a[0]&b[12])|(a[12]&b[0]);
assign ora111=(a[1]&b[11])|(a[11]&b[1]);
assign ora210=(a[2]&b[10])|(a[10]&b[2]);
assign ora39=(a[3]&b[9])|(a[9]&b[3]);
assign ora48=(a[4]&b[8])|(a[8]&b[4]);
assign ora57=(a[5]&b[7])|(a[7]&b[5]);
assign ora013=(a[0]&b[13])|(a[13]&b[0]);
assign ora112=(a[1]&b[12])|(a[12]&b[1]);
assign ora211=(a[2]&b[11])|(a[11]&b[2]);
assign ora310=(a[3]&b[10])|(a[10]&b[3]);
assign ora49=(a[4]&b[9])|(a[9]&b[4]);
assign ora58=(a[5]&b[8])|(a[8]&b[5]);
assign ora014=(a[0]&b[14])|(a[14]&b[0]);
assign ora113=(a[1]&b[13])|(a[13]&b[1]);
assign ora212=(a[2]&b[12])|(a[12]&b[2]);
assign ora311=(a[3]&b[11])|(a[11]&b[3]);
assign ora410=(a[4]&b[10])|(a[10]&b[4]);
assign ora59=(a[5]&b[9])|(a[9]&b[5]);
assign ora68=(a[6]&b[8])|(a[8]&b[6]);
assign ora015=(a[0]&b[15])|(a[15]&b[0]);
assign ora114=(a[1]&b[14])|(a[14]&b[1]);
assign ora213=(a[2]&b[13])|(a[13]&b[2]);
assign ora312=(a[3]&b[12])|(a[12]&b[3]);
assign ora411=(a[4]&b[11])|(a[11]&b[4]);
assign ora510=(a[5]&b[10])|(a[10]&b[5]);
assign ora69=(a[6]&b[9])|(a[9]&b[6]);
assign ora78=(a[7]&b[8])|(a[8]&b[7]);
assign ora115=(a[1]&b[15])|(a[15]&b[1]);
assign ora214=(a[2]&b[14])|(a[14]&b[2]);
assign ora313=(a[3]&b[13])|(a[13]&b[3]);
assign ora412=(a[4]&b[12])|(a[12]&b[4]);
assign ora511=(a[5]&b[11])|(a[11]&b[5]);
assign ora610=(a[6]&b[10])|(a[10]&b[6]);
assign ora79=(a[7]&b[9])|(a[9]&b[7]);
assign ora215=(a[2]&b[15])|(a[15]&b[2]);
assign ora314=(a[3]&b[14])|(a[14]&b[3]);
assign ora413=(a[4]&b[13])|(a[13]&b[4]);
assign ora512=(a[5]&b[12])|(a[12]&b[5]);
assign ora611=(a[6]&b[11])|(a[11]&b[6]);
assign ora710=(a[7]&b[10])|(a[10]&b[7]);
assign ora89=(a[8]&b[9])|(a[9]&b[8]);
assign ora315=(a[3]&b[15])|(a[15]&b[3]);
assign ora414=(a[4]&b[14])|(a[14]&b[4]);
assign ora513=(a[5]&b[13])|(a[13]&b[5]);
assign ora612=(a[6]&b[12])|(a[12]&b[6]);
assign ora711=(a[7]&b[11])|(a[11]&b[7]);
assign ora810=(a[8]&b[10])|(a[10]&b[8]);
assign ora415=(a[4]&b[15])|(a[15]&b[4]);
assign ora514=(a[5]&b[14])|(a[14]&b[5]);
assign ora613=(a[6]&b[13])|(a[13]&b[6]);
assign ora712=(a[7]&b[12])|(a[12]&b[7]);
assign ora811=(a[8]&b[11])|(a[11]&b[1]);
assign ora910=(a[9]&b[10])|(a[10]&b[9]);
assign ora515=(a[5]&b[15])|(a[15]&b[5]);
assign ora614=(a[6]&b[14])|(a[14]&b[6]);
assign ora713=(a[7]&b[13])|(a[13]&b[7]);
assign ora812=(a[8]&b[12])|(a[12]&b[8]);
assign ora911=(a[9]&b[11])|(a[11]&b[9]);
assign ora615=(a[6]&b[15])|(a[15]&b[6]);
assign ora714=(a[7]&b[14])|(a[14]&b[7]);
assign ora813=(a[8]&b[13])|(a[13]&b[8]);
assign ora912=(a[9]&b[12])|(a[12]&b[9]);
assign ora1011=(a[10]&b[11])|(a[11]&b[10]);
assign ora67=(a[6]&b[7])|(a[7]&b[6]);

assign ana010=(a[10]&b[0])&(a[0]&b[10]);
assign ana19=(a[1]&b[9])&(a[9]&b[1]);
assign ana28=(a[2]&b[8])&(a[8]&b[2]);
assign ana37=(a[3]&b[7])&(a[7]&b[3]);
assign ana46=(a[4]&b[6])&(a[6]&b[4]);
assign ana011=(a[0]&b[11])&(a[11]&b[0]);
assign ana110=(a[1]&b[10])&(a[10]&b[1]);
assign ana29=(a[2]&b[9])&(a[9]&b[2]);
assign ana38=(a[3]&b[8])&(a[8]&b[3]);
assign ana47=(a[4]&b[7])&(a[7]&b[4]);
assign ana56=(a[5]&b[6])&(a[6]&b[5]);
assign ana012=(a[0]&b[12])&(a[12]&b[0]);
assign ana111=(a[1]&b[11])&(a[11]&b[1]);
assign ana210=(a[2]&b[10])&(a[10]&b[2]);
assign ana39=(a[3]&b[9])&(a[9]&b[3]);
assign ana48=(a[4]&b[8])&(a[8]&b[4]);
assign ana57=(a[5]&b[7])&(a[7]&b[5]);
assign ana013=(a[0]&b[13])&(a[13]&b[0]);
assign ana112=(a[1]&b[12])&(a[12]&b[1]);
assign ana211=(a[2]&b[11])&(a[11]&b[2]);
assign ana310=(a[3]&b[10])&(a[10]&b[3]);
assign ana49=(a[4]&b[9])&(a[9]&b[4]);
assign ana58=(a[5]&b[8])&(a[8]&b[5]);
assign ana014=(a[0]&b[14])&(a[14]&b[0]);
assign ana113=(a[1]&b[13])&(a[13]&b[1]);
assign ana212=(a[2]&b[12])&(a[12]&b[2]);
assign ana311=(a[3]&b[11])&(a[11]&b[3]);
assign ana410=(a[4]&b[10])&(a[10]&b[4]);
assign ana59=(a[5]&b[9])&(a[9]&b[5]);
assign ana68=(a[6]&b[8])&(a[8]&b[6]);
assign ana015=(a[0]&b[15])&(a[15]&b[0]);
assign ana114=(a[1]&b[14])&(a[14]&b[1]);
assign ana213=(a[2]&b[13])&(a[13]&b[2]);
assign ana312=(a[3]&b[12])&(a[12]&b[3]);
assign ana411=(a[4]&b[11])&(a[11]&b[4]);
assign ana510=(a[5]&b[10])&(a[10]&b[5]);
assign ana69=(a[6]&b[9])&(a[9]&b[6]);
assign ana78=(a[7]&b[8])&(a[8]&b[7]);
assign ana115=(a[1]&b[15])&(a[15]&b[1]);
assign ana214=(a[2]&b[14])&(a[14]&b[2]);
assign ana313=(a[3]&b[13])&(a[13]&b[3]);
assign ana412=(a[4]&b[12])&(a[12]&b[4]);
assign ana511=(a[5]&b[11])&(a[11]&b[5]);
assign ana610=(a[6]&b[10])&(a[10]&b[6]);
assign ana79=(a[7]&b[9])&(a[9]&b[7]);
assign ana215=(a[2]&b[15])&(a[15]&b[2]);
assign ana314=(a[3]&b[14])&(a[14]&b[3]);
assign ana413=(a[4]&b[13])&(a[13]&b[4]);
assign ana512=(a[5]&b[12])&(a[12]&b[5]);
assign ana611=(a[6]&b[11])&(a[11]&b[6]);
assign ana710=(a[7]&b[10])&(a[10]&b[7]);
assign ana89=(a[8]&b[9])&(a[9]&b[8]);
assign ana315=(a[3]&b[15])&(a[15]&b[3]);
assign ana414=(a[4]&b[14])&(a[14]&b[4]);
assign ana513=(a[5]&b[13])&(a[13]&b[5]);
assign ana612=(a[6]&b[12])&(a[12]&b[6]);
assign ana711=(a[7]&b[11])&(a[11]&b[7]);
assign ana810=(a[8]&b[10])&(a[10]&b[8]);
assign ana415=(a[4]&b[15])&(a[15]&b[4]);
assign ana514=(a[5]&b[14])&(a[14]&b[5]);
assign ana613=(a[6]&b[13])&(a[13]&b[6]);
assign ana712=(a[7]&b[12])&(a[12]&b[7]);
assign ana811=(a[8]&b[11])&(a[11]&b[1]);
assign ana910=(a[9]&b[10])&(a[10]&b[9]);
assign ana515=(a[5]&b[15])&(a[15]&b[5]);
assign ana614=(a[6]&b[14])&(a[14]&b[6]);
assign ana713=(a[7]&b[13])&(a[13]&b[7]);
assign ana812=(a[8]&b[12])&(a[12]&b[8]);
assign ana911=(a[9]&b[11])&(a[11]&b[9]);
assign ana615=(a[6]&b[15])&(a[15]&b[6]);
assign ana714=(a[7]&b[14])&(a[14]&b[7]);
assign ana813=(a[8]&b[13])&(a[13]&b[8]);
assign ana912=(a[9]&b[12])&(a[12]&b[8]);
assign ana1011=(a[10]&b[11])&(a[11]&b[10]);
assign ana67=(a[6]&b[7])&(a[7]&b[6]);


//approximate stage1
compressor5_2 t1(.p0(ana46),.p1(ana37),.p2(ana28),.p3(ana19),.p4(ana010),.w1(ca1),.w0(sa1));
compressor5_2 t11(.p0(ana911),.p1(ana812),.p2(ana713),.p3(ana614),.p4(ana515),.w1(ca11),.w0(sa11));
compressor5_2 t12(.p0(ana1011),.p1(ana912),.p2(ana813),.p3(ana714),.p4(ana615),.w1(ca12),.w0(sa12));

compressor6_2 t2 (.p0(ana56),.p1(ana47),.p2(ana38),.p3(ana29),.p4(ana110),.p5(ana011),.w1(ca2),.w0(sa2));
compressor6_2 t3 (.p0(ana57),.p1(ana48),.p2(ana39),.p3(ana210),.p4(ana111),.p5(ana012),.w1(ca3),.w0(sa3));
compressor6_2 t9 (.p0(ana810),.p1(ana711),.p2(ana612),.p3(ana513),.p4(ana414),.p5(ana315),.w1(ca9),.w0(sa9));
compressor6_2 t10 (.p0(ana910),.p1(ana811),.p2(ana712),.p3(ana613),.p4(ana514),.p5(ana415),.w1(ca10),.w0(sa10));


compressor8_2 t6(.p0(ana78),.p1(ana69),.p2(ana510),.p3(ana411),.p4(ana312),.p5(ana213),.p6(ana114),.p7(ana015),.w1(ca6),.w0(sa6));
compressor7_2 t7(.p0(ana79),.p1(ana610),.p2(ana511),.p3(ana412),.p4(ana313),.p5(ana214),.p6(ana115),.w1(ca7),.w0(sa7));
compressor7_2 t8(.p0(ana89),.p1(ana710),.p2(ana611),.p3(ana512),.p4(ana413),.p5(ana314),.p6(ana215),.w1(ca8),.w0(sa8));
compressor7_2 t5(.p0(ana68),.p1(ana59),.p2(ana410),.p3(ana311),.p4(ana212),.p5(ana113),.p6(ana014),.w1(ca5),.w0(sa5));
compressor7_2 t4(.p0(ana67),.p1(ana58),.p2(ana49),.p3(ana310),.p4(ana211),.p5(ana112),.p6(ana013),.w1(ca4),.w0(sa4));

assign anae46 = ~ ana46; 	assign anae56 = ~ ana56; 	assign anae513 = ~ ana513;
assign anae37 = ~ ana37; 	assign anae47 = ~ ana47;	assign anae414 = ~ ana414;
assign anae28 = ~ ana28; 	assign anae38 = ~ ana38;	assign anae315 = ~ ana315;
assign anae19 = ~ ana19;	assign anae29 = ~ ana29;	assign anae910 = ~ ana910;
assign anae010 = ~ ana010; 	assign anae110 = ~ ana110;	assign anae811 = ~ ana811;
assign anae911 = ~ ana911;	assign anae011 = ~ ana011;	assign anae712 = ~ ana712;
assign anae812 = ~ ana812;	assign anae57 = ~ ana57;	assign anae613 = ~ ana613;
assign anae713 = ~ ana713;	assign anae48 = ~ ana48;	assign anae514 = ~ ana514;
assign anae614 = ~ ana614;	assign anae39 = ~ ana39;	assign anae415 = ~ ana415;
assign anae515 = ~ ana515;	assign anae210 = ~ ana210;	assign anae78 = ~ ana78;
assign anae1011 = ~ ana1011;	assign anae111 = ~ ana111;	assign anae69 = ~ ana69;
assign anae912 = ~ ana912;	assign anae012 = ~ ana012;	assign anae510 = ~ ana510;
assign anae813 = ~ ana813;	assign anae810 = ~ ana810;	assign anae411 = ~ ana411;
assign anae714 = ~ ana714;	assign anae711 = ~ ana711;	assign anae312 = ~ ana312;
assign anae615 = ~ ana615;	assign anae612 = ~ ana612;	assign anae213 = ~ ana213;
assign anae114 = ~ ana114;	assign anae015 = ~ ana015;	assign anae115 = ~ ana115;
assign anae79 = ~ ana79;	assign anae511 = ~ ana511;	assign anae214 = ~ ana214;
assign anae610 = ~ ana610;	assign anae412 = ~ ana412;	assign anae313 = ~ ana313;
assign anae89 = ~ ana89; 	assign anae413 = ~ ana413; 	assign anae59 = ~ ana59;
assign anae710 = ~ ana710; 	assign anae314 = ~ ana314;	assign anae410 = ~ ana410;
assign anae611 = ~ ana611; 	assign anae215 = ~ ana215;	assign anae311 = ~ ana311;
assign anae512 = ~ ana512;	assign anae68 = ~ ana68;	assign anae212 = ~ ana212;
assign anae113 = ~ ana113; 	assign anae58 = ~ ana58; 	assign anae211 = ~ ana211;
assign anae014 = ~ ana014; 	assign anae49 = ~ ana49;	assign anae112 = ~ ana112;
assign anae67 = ~ ana67; 	assign anae310 = ~ ana310;	assign anae013 = ~ ana013;

//error correction compressor stage
compressor5_2 te1(.p0(anae46),.p1(anae37),.p2(anae28),.p3(anae19),.p4(anae010),.w1(cea1),.w0(sea1));
compressor5_2 te11(.p0(anae911),.p1(anae812),.p2(anae713),.p3(anae614),.p4(anae515),.w1(cea11),.w0(sea11));
compressor5_2 te12(.p0(anae1011),.p1(anae912),.p2(anae813),.p3(anae714),.p4(anae615),.w1(cea12),.w0(sea12));

compressor6_2 te2 (.p0(anae56),.p1(anae47),.p2(anae38),.p3(anae29),.p4(anae110),.p5(anae011),.w1(cea2),.w0(sea2));
compressor6_2 te3 (.p0(anae57),.p1(anae48),.p2(anae39),.p3(anae210),.p4(anae111),.p5(anae012),.w1(cea3),.w0(sea3));
compressor6_2 te9 (.p0(anae810),.p1(anae711),.p2(anae612),.p3(anae513),.p4(anae414),.p5(anae315),.w1(cea9),.w0(sea9));
compressor6_2 te10 (.p0(anae910),.p1(anae811),.p2(anae712),.p3(anae613),.p4(anae514),.p5(anae415),.w1(cea10),.w0(sea10));


compressor8_2 te6(.p0(anae78),.p1(anae69),.p2(anae510),.p3(anae411),.p4(anae312),.p5(anae213),.p6(anae114),.p7(anae015),.w1(cea6),.w0(sea6));
compressor7_2 te7(.p0(anae79),.p1(anae610),.p2(anae511),.p3(anae412),.p4(anae313),.p5(anae214),.p6(anae115),.w1(cea7),.w0(sea7));
compressor7_2 te8(.p0(anae89),.p1(anae710),.p2(anae611),.p3(anae512),.p4(anae413),.p5(anae314),.p6(anae215),.w1(cea8),.w0(sea8));
compressor7_2 te5(.p0(anae68),.p1(anae59),.p2(anae410),.p3(anae311),.p4(anae212),.p5(anae113),.p6(anae014),.w1(cea5),.w0(sea5));
compressor7_2 te4(.p0(anae67),.p1(anae58),.p2(anae49),.p3(anae310),.p4(anae211),.p5(anae112),.p6(anae013),.w1(cea4),.w0(sea4));
assign se1 = ~sea1;
assign se2 = ~sea2;
assign se3 = ~sea3;
assign se4 = ~sea4;
assign se5 = ~sea5;
assign se6 = ~sea6;
assign se7 = ~sea7;
assign se8 = ~sea8;
assign se9 = ~sea9;
assign se10 = ~sea10;
assign se11 = ~sea11;
assign se12 = ~sea12;

assign ce1 = ~cea1;
assign ce2 = ~cea2;
assign ce3 = ~cea3;
assign ce4 = ~cea4;
assign ce5 = ~cea5;
assign ce6 = ~cea6;
assign ce7 = ~cea7;
assign ce8 = ~cea8;
assign ce9 = ~cea9;
assign ce10 = ~cea10;
assign ce11 = ~cea11;
assign ce12 = ~cea12;


//STAGE
assign s1=(((2*ca1)+sa1)>3)?se1:sa1;
assign s2=(((2*ca2)+sa2)>3)?se2:sa2;
assign s3=(((2*ca3)+sa3)>3)?se3:sa3;
assign s4=(((2*ca4)+sa4)>3)?se4:sa4;
assign s5=(((2*ca5)+sa5)>3)?se5:sa5;
assign s6=(((2*ca6)+sa6)>3)?se6:sa6;
assign s7=(((2*ca7)+sa7)>3)?se7:sa7;
assign s8=(((2*ca8)+sa8)>3)?se8:sa8;
assign s9=(((2*ca9)+sa9)>3)?se9:sa9;
assign s10=(((2*ca10)+sa10)>3)?se10:sa10;
assign s11=(((2*ca11)+sa11)>3)?se11:sa11;
assign s12=(((2*ca12)+sa12)>3)?se12:sa12;


assign c1=(((2*ca1)+sa1)>3)?ce1:ca1;
assign c2=(((2*ca2)+sa2)>3)?ce2:ca2;
assign c3=(((2*ca3)+sa3)>3)?ce3:ca3;
assign c4=(((2*ca4)+sa4)>3)?ce4:ca4;
assign c5=(((2*ca5)+sa5)>3)?ce5:ca5;
assign c6=(((2*ca6)+sa6)>3)?ce6:ca6;
assign c7=(((2*ca7)+sa7)>3)?ce7:ca7;
assign c8=(((2*ca8)+sa8)>3)?ce8:ca8;
assign c9=(((2*ca9)+sa9)>3)?ce9:sa9;
assign c10=(((2*ca10)+sa10)>3)?ce10:ca10;
assign c11=(((2*ca11)+sa11)>3)?ce11:ca11;
assign c12=(((2*ca12)+sa12)>3)?ce12:ca12;
//stage2
assign y[0]=(a[0]&b[0]);
assign z[0]=0;
ha_df t13((a[1]&b[0]),(a[0]&b[1]),y[1],z[1]);
fa_df t14((a[2]&b[0]),(a[1]&b[1]),(a[0]&b[2]),y[2],z[2]);
tdm_tree_8 t15((a[3]&b[0]),(a[2]&b[1]),(a[1]&b[2]),(a[0]&b[3]),0,0,0,0,y[3],z[3]);
tdm_tree_8 t16((a[4]&b[0]),(a[3]&b[1]),(a[2]&b[2]),(a[1]&b[3]),(a[0]&b[4]),0,0,0,y[4],z[4]);
tdm_tree_8 t17((a[5]&b[0]),(a[4]&b[1]),(a[3]&b[2]),(a[2]&b[3]),(a[1]&b[4]),(a[0]&b[5]),0,0,y[5],z[5]);
tdm_tree_8 t18((a[6]&b[0]),(a[5]&b[1]),(a[4]&b[2]),(a[3]&b[3]),(a[2]&b[4]),(a[1]&b[5]),(a[0]&b[6]),0,y[6],z[6]);
tdm_tree_8 t19((a[7]&b[0]),(a[6]&b[1]),(a[5]&b[2]),(a[4]&b[3]),(a[3]&b[4]),(a[2]&b[5]),(a[1]&b[6]),(a[0]&b[7]),y[7],z[7]);

tdm_tree_8 t20((a[8]&b[0]),(a[7]&b[1]),(a[6]&b[02]),(a[5]&b[3]),(a[4]&b[4]),(a[3]&b[5]),(a[2]&b[6]),(a[1]&b[7]),y1[8],z1[8]);
fa_df t43(y1[8],z1[8],(a[0]&b[8]),y[8],z[8]); 

tdm_tree_8 t21((a[9]&b[0]),(a[8]&b[1]),(a[7]&b[2]),(a[6]&b[3]),(a[5]&b[4]),(a[4]&b[5]),(a[3]&b[6]),(a[2]&b[7]),y1[9],z1[9]);
fa_df t44(y1[9],z1[9],(a[1]&b[8]),y2[9],z2[9]);
fa_df t45(y2[9],z2[9],(a[0]&b[9]),y[9],z[9]);//10

tdm_tree_8 t22((a[10]&b[0]),(a[9]&b[1]),(a[8]&b[2]),(a[7]&b[3]),(a[6]&b[4]),(a[5]&b[5]),s1,c1,y[10],z[10]);
tdm_tree_8 t23((a[11]&b[0]),(a[10]&b[1]),(a[9]&b[2]),(a[8]&b[3]),(a[7]&b[4]),(a[6]&b[5]),s2,c2,y[11],z[11]);

tdm_tree_8 t24((a[12]&b[0]),(a[11]&b[1]),(a[10]&b[2]),(a[9]&b[3]),(a[8]&b[4]),(a[7]&b[5]),(a[6]&b[6]),s3,y1[12],z1[12]);
fa_df t46(y1[12],z1[12],c3,y[12],z[12]); //9

tdm_tree_8 t25((a[13]&b[0]),(a[12]&b[1]),(a[11]&b[2]),(a[10]&b[3]),(a[9]&b[4]),(a[8]&b[5]),(a[7]&b[6]),s4,y1[13],z1[13]);
fa_df t47(y1[13],z1[13],c4,y[13],z[13]); //9

tdm_tree_8 t26((a[14]&b[0]),(a[13]&b[1]),(a[12]&b[2]),(a[11]&b[3]),(a[10]&b[4]),(a[9]&b[5]),(a[8]&b[6]),(a[7]&b[7]),y1[14],z1[14]);
fa_df t445(y1[14],z1[14],s5,y2[14],z2[14]);
fa_df t48(y2[14],z2[14],c5,y[14],z[14]);//10

tdm_tree_8 t27((a[15]&b[0]),(a[14]&b[1]),(a[13]&b[2]),(a[12]&b[3]),(a[11]&b[4]),(a[10]&b[5]),(a[9]&b[6]),(a[8]&b[7]),y1[15],z1[15]);
fa_df t455(y1[15],z1[15],s6,y2[15],z2[15]);
fa_df t49(y2[15],z2[15],c6,y[15],z[15]);//10

tdm_tree_8 t28((a[15]&b[1]),(a[14]&b[2]),(a[13]&b[3]),(a[12]&b[4]),(a[11]&b[5]),(a[10]&b[6]),(a[9]&b[7]),(a[8]&b[8]),y1[16],z1[16]);
fa_df t50(y1[16],z1[16],s7,y2[16],z2[16]);
fa_df t51(y2[16],z2[16],c7,y[16],z[16]);//10

tdm_tree_8 t29((a[15]&b[2]),(a[14]&b[3]),(a[13]&b[4]),(a[12]&b[5]),(a[11]&b[6]),(a[10]&b[7]),(a[9]&b[8]),s8,y1[17],z1[17]);
fa_df t52(y1[17],z1[17],c8,y[17],z[17]); //9

tdm_tree_8 t30((a[15]&b[3]),(a[14]&b[4]),(a[13]&b[5]),(a[12]&b[6]),(a[11]&b[7]),(a[10]&b[8]),(a[9]&b[9]),s9,y1[18],z1[18]);
fa_df t53(y1[18],z1[18],c9,y[18],z[18]); //9

tdm_tree_8 t31((a[15]&b[4]),(a[14]&b[5]),(a[13]&b[6]),(a[12]&b[7]),(a[11]&b[8]),(a[10]&b[9]),s10,c10,y[19],z[19]);
tdm_tree_8 t32((a[15]&b[5]),(a[14]&b[6]),(a[13]&b[7]),(a[12]&b[8]),(a[11]&b[9]),(a[10]&b[10]),s11,c11,y[20],z[20]);
tdm_tree_8 t33((a[15]&b[6]),(a[14]&b[7]),(a[13]&b[8]),(a[12]&b[9]),(a[11]&b[10]),0,s12,c12,y[21],z[21]);

tdm_tree_8 t34((a[15]&b[7]),(a[14]&b[8]),(a[13]&b[9]),(a[12]&b[10]),(a[11]&b[11]),(a[10]&b[12]),(a[9]&b[13]),(a[8]&b[14]),y1[22],z1[22]);
fa_df t54(y1[22],z1[22],(a[7]&b[15]),y[22],z[22]); //9

tdm_tree_8 t35((a[15]&b[8]),(a[14]&b[9]),(a[13]&b[10]),(a[12]&b[11]),(a[11]&b[12]),(a[10]&b[13]),(a[9]&b[14]),(a[8]&b[15]),y[23],z[23]);
tdm_tree_8 t36((a[15]&b[9]),(a[14]&b[10]),(a[13]&b[11]),(a[12]&b[12]),(a[11]&b[13]),(a[10]&b[14]),(a[9]&b[15]),0,y[24],z[24]);
tdm_tree_8 t37((a[15]&b[10]),(a[14]&b[11]),(a[13]&b[12]),(a[12]&b[13]),(a[11]&b[14]),(a[10]&b[15]),0,0,y[25],z[25]);
tdm_tree_8 t38((a[15]&b[11]),(a[14]&b[12]),(a[13]&b[13]),(a[12]&b[14]),(a[11]&b[15]),0,0,0,y[26],z[26]);
tdm_tree_8 t39((a[15]&b[12]),(a[14]&b[13]),(a[13]&b[14]),(a[12]&b[15]),0,0,0,0,y[27],z[27]);
fa_df t55((a[15]&b[13]),(a[14]&b[14]),(a[13]&b[15]),y[28],z[28]);
fa_df t56((a[15]&b[14]),(a[14]&b[15]),0,y[29],z[29]);
ha_df t57((a[15]&b[15]),z[29],y[30],z[30]);
assign y[31]=z[30];
assign z[31]=0;
//stage 3
assign A= y[31:16];
assign B= z[31:16];
assign C= y[15:0];
assign D= z[15:0];
wire hr;
wire hr1;
ECEPTA_adder E1 (.a(C),.b(D),.s(p[15:0]),.Cin(hr));
ripple_carry16 RC1 (.a(A),.b(B),.cin(hr),.sum(p[31:16]),.cout(hr1));

endmodule
