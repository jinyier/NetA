  input xmit_dataH[0];
  input xmit_dataH[1];
  input xmit_dataH[2];
  input xmit_dataH[3];
  input xmit_dataH[4];
  input xmit_dataH[5];
  input xmit_dataH[6];
  input xmit_dataH[7];
  output rec_dataH[0];
  output rec_dataH[1];
  output rec_dataH[2];
  output rec_dataH[3];
  output rec_dataH[4];
  output rec_dataH[5];
  output rec_dataH[6];
  output rec_dataH[7];
  input sys_clk, sys_rst_l, xmitH, uart_REC_dataH;
  output uart_XMIT_dataH, xmit_doneH, rec_readyH;
  wire   \iXMIT/n37 , \iXMIT/n36 , \iXMIT/n35 , \iXMIT/n34 , \iXMIT/n33 ,
         \iXMIT/n32 , \iXMIT/n31 , \iXMIT/n67 , \iXMIT/add_71_S2/carry[2] ,
         \iXMIT/add_71_S2/carry[3] , \iXMIT/add_71_S2/carry[4] , \iXMIT/n53 ,
         \iXMIT/n52 , \iXMIT/n51 , \iXMIT/n50 , \iXMIT/n49 ,
         \iXMIT/xmit_doneInH , \iXMIT/next_state[2] , \iXMIT/next_state[1] ,
         \iXMIT/next_state[0] , \iXMIT/N35 , \iXMIT/N34 , \iXMIT/N33 ,
         \iXMIT/N32 , \iXMIT/N31 , \iXMIT/N29 , \iXMIT/N28 , \iXMIT/N27 ,
         \iXMIT/bitCell_cntrH[0] , \iXMIT/bitCell_cntrH[1] ,
         \iXMIT/bitCell_cntrH[2] , \iXMIT/bitCell_cntrH[3] , \iRECEIVER/n59 ,
         \iRECEIVER/n58 , \iRECEIVER/n57 , \iRECEIVER/n56 , \iRECEIVER/n52 ,
         \iRECEIVER/n51 , \iRECEIVER/n50 , \iRECEIVER/n49 , \iRECEIVER/n48 ,
         \iRECEIVER/n47 , \iRECEIVER/n46 , \iRECEIVER/n45 , \iRECEIVER/n44 ,
         \iRECEIVER/rec_readyInH , \iRECEIVER/next_state[2] ,
         \iRECEIVER/next_state[1] , \iRECEIVER/next_state[0] , \iRECEIVER/N27 ,
         \iRECEIVER/N26 , \iRECEIVER/N25 , \iRECEIVER/N24 ,
         \iRECEIVER/rec_datSyncH , n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125;
  wire   [7:0] rec_dataH_rec;
  wire   [7:0] rec_dataH_temp;

  DFFRX1 \iXMIT/state_reg[0]  ( .D(\iXMIT/next_state[0] ), .CK(sys_clk), .RN(
        sys_rst_l), .QN(n103), .Q(n103_Q) );
  DFFRX1 \iXMIT/state_reg[1]  ( .D(\iXMIT/next_state[1] ), .CK(sys_clk), .RN(
        sys_rst_l), .Q(n25), .QN(n112));
  DFFRX1 \iXMIT/state_reg[2]  ( .D(\iXMIT/next_state[2] ), .CK(sys_clk), .RN(
        sys_rst_l), .Q(n17), .QN(n113) );
  DFFRX1 \iXMIT/xmit_ShiftRegH_reg[0]  ( .D(\iXMIT/n37 ), .CK(sys_clk), .RN(
        sys_rst_l), .QN(n111) );
  DFFRX1 \iXMIT/xmit_ShiftRegH_reg[1]  ( .D(\iXMIT/n36 ), .CK(sys_clk), .RN(
        sys_rst_l), .QN(n110) );
  DFFRX1 \iXMIT/xmit_ShiftRegH_reg[2]  ( .D(\iXMIT/n35 ), .CK(sys_clk), .RN(
        sys_rst_l), .QN(n109) );
  DFFRX1 \iXMIT/xmit_ShiftRegH_reg[3]  ( .D(\iXMIT/n34 ), .CK(sys_clk), .RN(
        sys_rst_l), .QN(n108) );
  DFFRX1 \iXMIT/xmit_ShiftRegH_reg[4]  ( .D(\iXMIT/n33 ), .CK(sys_clk), .RN(
        sys_rst_l), .QN(n107) );
  DFFRX1 \iXMIT/xmit_ShiftRegH_reg[5]  ( .D(\iXMIT/n31 ), .CK(sys_clk), .RN(
        sys_rst_l), .QN(n106) );
  DFFRX1 \iXMIT/xmit_ShiftRegH_reg[6]  ( .D(\iXMIT/n32 ), .CK(sys_clk), .RN(
        sys_rst_l), .QN(n105) );
  DFFRX1 \iXMIT/bitCountH_reg[3]  ( .D(\iXMIT/n49 ), .CK(sys_clk), .RN(
        sys_rst_l), .QN(n99), .Q(n99_Q) );
  DFFRX1 \iXMIT/bitCountH_reg[2]  ( .D(\iXMIT/n50 ), .CK(sys_clk), .RN(
        sys_rst_l), .QN(n100), .Q(n100_Q) );
  DFFRX1 \iXMIT/bitCountH_reg[1]  ( .D(\iXMIT/n51 ), .CK(sys_clk), .RN(
        sys_rst_l), .QN(n101), .Q(n101_Q) );
  DFFRX1 \iXMIT/bitCountH_reg[0]  ( .D(\iXMIT/n52 ), .CK(sys_clk), .RN(
        sys_rst_l), .Q(n26), .QN(n102) );
  DFFRX1 \iXMIT/bitCell_cntrH_reg[4]  ( .D(\iXMIT/N35 ), .CK(sys_clk), .RN(
        sys_rst_l), .QN(n98), .Q(n98_Q) );
  DFFRX1 \iRECEIVER/recd_bitCntrH_reg[0]  ( .D(\iRECEIVER/n59 ), .CK(sys_clk), 
        .RN(sys_rst_l), .Q(n27), .QN(n121) );
  DFFSX1 \iRECEIVER/state_reg[0]  ( .D(\iRECEIVER/next_state[0] ), .CK(sys_clk), .SN(sys_rst_l), .Q(n23), .QN(n125) );
  DFFRX1 \iRECEIVER/recd_bitCntrH_reg[1]  ( .D(\iRECEIVER/n58 ), .CK(sys_clk), 
        .RN(sys_rst_l), .Q(n28), .QN(n120) );
  DFFRX1 \iRECEIVER/recd_bitCntrH_reg[2]  ( .D(\iRECEIVER/n57 ), .CK(sys_clk), 
        .RN(sys_rst_l), .Q(n19), .QN(n119) );
  DFFRX1 \iRECEIVER/recd_bitCntrH_reg[3]  ( .D(\iRECEIVER/n56 ), .CK(sys_clk), 
        .RN(sys_rst_l), .QN(n118) );
  DFFSX1 \iRECEIVER/rec_datH_reg  ( .D(\iRECEIVER/rec_datSyncH ), .CK(sys_clk), 
        .SN(sys_rst_l), .QN(n124) );
  DFFRX1 \iRECEIVER/state_reg[1]  ( .D(\iRECEIVER/next_state[1] ), .CK(sys_clk), .RN(sys_rst_l), .Q(n122_Q), .QN(n122) );
  DFFRX1 \iRECEIVER/state_reg[2]  ( .D(\iRECEIVER/next_state[2] ), .CK(sys_clk), .RN(sys_rst_l), .Q(n117_Q), .QN(n117) );
  DFFRX1 \iRECEIVER/par_dataH_reg[0]  ( .D(\iRECEIVER/n45 ), .CK(sys_clk), 
        .RN(sys_rst_l), .Q(rec_dataH_rec[0]), .QN(\iRECEIVER/n44 ) );
  DFFRX1 \iXMIT/xmit_ShiftRegH_reg[7]  ( .D(\iXMIT/n53 ), .CK(sys_clk), .RN(
        sys_rst_l), .Q(n104), .QN(n33) );
  DFFRX1 \iRECEIVER/par_dataH_reg[1]  ( .D(\iRECEIVER/n46 ), .CK(sys_clk), 
        .RN(sys_rst_l), .Q(rec_dataH_rec[1]), .QN(n32) );
  DFFRX1 \iRECEIVER/par_dataH_reg[2]  ( .D(\iRECEIVER/n47 ), .CK(sys_clk), 
        .RN(sys_rst_l), .Q(rec_dataH_rec[2]), .QN(n22) );
  DFFRX1 \iRECEIVER/par_dataH_reg[3]  ( .D(\iRECEIVER/n48 ), .CK(sys_clk), 
        .RN(sys_rst_l), .Q(rec_dataH_rec[3]), .QN(n31) );
  DFFRX1 \iRECEIVER/par_dataH_reg[4]  ( .D(\iRECEIVER/n49 ), .CK(sys_clk), 
        .RN(sys_rst_l), .Q(rec_dataH_rec[4]), .QN(n21) );
  DFFRX1 \iRECEIVER/par_dataH_reg[5]  ( .D(\iRECEIVER/n50 ), .CK(sys_clk), 
        .RN(sys_rst_l), .Q(rec_dataH_rec[5]), .QN(n30) );
  DFFRX1 \iRECEIVER/par_dataH_reg[6]  ( .D(\iRECEIVER/n51 ), .CK(sys_clk), 
        .RN(sys_rst_l), .Q(rec_dataH_rec[6]), .QN(n20) );
  DFFRX1 \iRECEIVER/par_dataH_reg[7]  ( .D(\iRECEIVER/n52 ), .CK(sys_clk), 
        .RN(sys_rst_l), .Q(rec_dataH_rec[7]), .QN(n29) );
  DFFRX1 \iRECEIVER/bitCell_cntrH_reg[2]  ( .D(\iRECEIVER/N26 ), .CK(sys_clk), 
        .RN(sys_rst_l), .Q(n116), .QN(n18) );
  DFFRX1 \iRECEIVER/bitCell_cntrH_reg[3]  ( .D(\iRECEIVER/N27 ), .CK(sys_clk), 
        .RN(sys_rst_l), .Q(n123), .QN(n24) );
  DFFRX1 \iRECEIVER/bitCell_cntrH_reg[1]  ( .D(\iRECEIVER/N25 ), .CK(sys_clk), 
        .RN(sys_rst_l), .Q(n115) );
  DFFRX1 \iRECEIVER/bitCell_cntrH_reg[0]  ( .D(\iRECEIVER/N24 ), .CK(sys_clk), 
        .RN(sys_rst_l), .Q(n114) );
  DFFRX1 \iXMIT/bitCell_cntrH_reg[0]  ( .D(\iXMIT/N31 ), .CK(sys_clk), .RN(
        sys_rst_l), .Q(\iXMIT/bitCell_cntrH[0] ), .QN(\iXMIT/n67 ) );
  DFFRX1 \iXMIT/bitCell_cntrH_reg[1]  ( .D(\iXMIT/N32 ), .CK(sys_clk), .RN(
        sys_rst_l), .Q(\iXMIT/bitCell_cntrH[1] ) );
  DFFRX1 \iXMIT/bitCell_cntrH_reg[3]  ( .D(\iXMIT/N34 ), .CK(sys_clk), .RN(
        sys_rst_l), .Q(\iXMIT/bitCell_cntrH[3] ) );
  DFFRX1 \iXMIT/bitCell_cntrH_reg[2]  ( .D(\iXMIT/N33 ), .CK(sys_clk), .RN(
        sys_rst_l), .Q(\iXMIT/bitCell_cntrH[2] ) );
  ADDHXL \iXMIT/add_71_S2/U1_1_3  ( .A(\iXMIT/bitCell_cntrH[3] ), .B(
        \iXMIT/add_71_S2/carry[3] ), .CO(\iXMIT/add_71_S2/carry[4] ), .S(
        \iXMIT/N29 ) );
  ADDHXL \iXMIT/add_71_S2/U1_1_2  ( .A(\iXMIT/bitCell_cntrH[2] ), .B(
        \iXMIT/add_71_S2/carry[2] ), .CO(\iXMIT/add_71_S2/carry[3] ), .S(
        \iXMIT/N28 ) );
  ADDHXL \iXMIT/add_71_S2/U1_1_1  ( .A(\iXMIT/bitCell_cntrH[1] ), .B(
        \iXMIT/bitCell_cntrH[0] ), .CO(\iXMIT/add_71_S2/carry[2] ), .S(
        \iXMIT/N27 ) );
  DFFRX1 \iRECEIVER/rec_readyH_reg  ( .D(\iRECEIVER/rec_readyInH ), .CK(
        sys_clk), .RN(sys_rst_l), .Q(rec_readyH) );
  DFFRX1 \iXMIT/xmit_doneH_reg  ( .D(\iXMIT/xmit_doneInH ), .CK(sys_clk), .RN(
        sys_rst_l), .Q(xmit_doneH) );
  DFFSX1 \iRECEIVER/rec_datSyncH_reg  ( .D(uart_REC_dataH), .CK(sys_clk), .SN(
        sys_rst_l), .Q(\iRECEIVER/rec_datSyncH ) );
  DFFRX1 \rec_dataH_reg[7]  ( .D(rec_dataH_temp[7]), .CK(sys_clk), .RN(
        sys_rst_l), .Q(rec_dataH[7]) );
  DFFRX1 \rec_dataH_reg[6]  ( .D(rec_dataH_temp[6]), .CK(sys_clk), .RN(
        sys_rst_l), .Q(rec_dataH[6]) );
  DFFRX1 \rec_dataH_reg[5]  ( .D(rec_dataH_temp[5]), .CK(sys_clk), .RN(
        sys_rst_l), .Q(rec_dataH[5]) );
  DFFRX1 \rec_dataH_reg[4]  ( .D(rec_dataH_temp[4]), .CK(sys_clk), .RN(
        sys_rst_l), .Q(rec_dataH[4]) );
  DFFRX1 \rec_dataH_reg[3]  ( .D(rec_dataH_temp[3]), .CK(sys_clk), .RN(
        sys_rst_l), .Q(rec_dataH[3]) );
  DFFRX1 \rec_dataH_reg[2]  ( .D(rec_dataH_temp[2]), .CK(sys_clk), .RN(
        sys_rst_l), .Q(rec_dataH[2]) );
  DFFRX1 \rec_dataH_reg[1]  ( .D(rec_dataH_temp[1]), .CK(sys_clk), .RN(
        sys_rst_l), .Q(rec_dataH[1]) );
  DFFRX1 \rec_dataH_reg[0]  ( .D(rec_dataH_temp[0]), .CK(sys_clk), .RN(
        sys_rst_l), .Q(rec_dataH[0]) );
  DFFRX1 \rec_dataH_temp_reg[7]  ( .D(rec_dataH_rec[7]), .CK(rec_readyH), .RN(
        sys_rst_l), .Q(rec_dataH_temp[7]) );
  DFFRX1 \rec_dataH_temp_reg[6]  ( .D(rec_dataH_rec[6]), .CK(rec_readyH), .RN(
        sys_rst_l), .Q(rec_dataH_temp[6]) );
  DFFRX1 \rec_dataH_temp_reg[5]  ( .D(rec_dataH_rec[5]), .CK(rec_readyH), .RN(
        sys_rst_l), .Q(rec_dataH_temp[5]) );
  DFFRX1 \rec_dataH_temp_reg[4]  ( .D(rec_dataH_rec[4]), .CK(rec_readyH), .RN(
        sys_rst_l), .Q(rec_dataH_temp[4]) );
  DFFRX1 \rec_dataH_temp_reg[3]  ( .D(rec_dataH_rec[3]), .CK(rec_readyH), .RN(
        sys_rst_l), .Q(rec_dataH_temp[3]) );
  DFFRX1 \rec_dataH_temp_reg[2]  ( .D(rec_dataH_rec[2]), .CK(rec_readyH), .RN(
        sys_rst_l), .Q(rec_dataH_temp[2]) );
  DFFRX1 \rec_dataH_temp_reg[1]  ( .D(rec_dataH_rec[1]), .CK(rec_readyH), .RN(
        sys_rst_l), .Q(rec_dataH_temp[1]) );
  DFFRX1 \rec_dataH_temp_reg[0]  ( .D(rec_dataH_rec[0]), .CK(rec_readyH), .RN(
        sys_rst_l), .Q(rec_dataH_temp[0]) );
  OAI211X1 U3 ( .A0(n17), .A1(n25), .B0(n34), .C0(n35), .Y(uart_XMIT_dataH) );
  AO21X1 U4 ( .A0(n36), .A1(n113), .B0(n111), .Y(n34) );
  OAI21XL U5 ( .A0(n35), .A1(n37), .B0(n38), .Y(\iXMIT/xmit_doneInH ) );
  OAI21XL U6 ( .A0(n36), .A1(n39), .B0(n40), .Y(\iXMIT/next_state[2] ) );
  CLKINVX1 U7 ( .A(n41), .Y(\iXMIT/next_state[1] ) );
  AOI211X1 U8 ( .A0(n39), .A1(n42), .B0(n43), .C0(n44), .Y(n41) );
  OAI221XL U9 ( .A0(n37), .A1(n45), .B0(n46), .B1(n36), .C0(n47), .Y(
        \iXMIT/next_state[0] ) );
  AOI31X1 U10 ( .A0(n112), .A1(n17), .A2(n103), .B0(n48), .Y(n47) );
  CLKINVX1 U11 ( .A(n42), .Y(n36) );
  NAND2X1 U12 ( .A(n49), .B(n50), .Y(\iXMIT/n53 ) );
  MXI2X1 U13 ( .A(n104), .B(xmit_dataH[7]), .S0(n44), .Y(n49) );
  MXI2X1 U14 ( .A(n51), .B(n52), .S0(n102), .Y(\iXMIT/n52 ) );
  MXI2X1 U15 ( .A(n53), .B(n54), .S0(n101), .Y(\iXMIT/n51 ) );
  NAND2X1 U16 ( .A(n55), .B(n26), .Y(n54) );
  CLKMX2X2 U17 ( .A(n56), .B(n57), .S0(n100), .Y(\iXMIT/n50 ) );
  MXI2X1 U18 ( .A(n58), .B(n59), .S0(n99), .Y(\iXMIT/n49 ) );
  NAND2BX1 U19 ( .AN(n100), .B(n57), .Y(n59) );
  NOR3X1 U20 ( .A(n102), .B(n101), .C(n52), .Y(n57) );
  AOI21X1 U21 ( .A0(n100), .A1(n55), .B0(n56), .Y(n58) );
  OAI2BB1X1 U22 ( .A0N(n101), .A1N(n55), .B0(n53), .Y(n56) );
  OA21XL U23 ( .A0(n26), .A1(n52), .B0(n51), .Y(n53) );
  NAND2X1 U24 ( .A(n52), .B(n38), .Y(n51) );
  CLKINVX1 U25 ( .A(n52), .Y(n55) );
  NAND3X1 U26 ( .A(n42), .B(n38), .C(n46), .Y(n52) );
  NOR2BX1 U27 ( .AN(n60), .B(n39), .Y(n46) );
  NAND4BX1 U28 ( .AN(n99), .B(n100), .C(n101), .D(n102), .Y(n60) );
  NAND3BX1 U29 ( .AN(xmitH), .B(n113), .C(n112), .Y(n38) );
  OAI221XL U30 ( .A0(n110), .A1(n50), .B0(n111), .B1(n44), .C0(n61), .Y(
        \iXMIT/n37 ) );
  NAND2X1 U31 ( .A(xmit_dataH[0]), .B(n62), .Y(n61) );
  OAI221XL U32 ( .A0(n109), .A1(n50), .B0(n110), .B1(n44), .C0(n63), .Y(
        \iXMIT/n36 ) );
  NAND2X1 U33 ( .A(xmit_dataH[1]), .B(n62), .Y(n63) );
  OAI221XL U34 ( .A0(n108), .A1(n50), .B0(n109), .B1(n44), .C0(n64), .Y(
        \iXMIT/n35 ) );
  NAND2X1 U35 ( .A(xmit_dataH[2]), .B(n62), .Y(n64) );
  OAI221XL U36 ( .A0(n107), .A1(n50), .B0(n108), .B1(n44), .C0(n65), .Y(
        \iXMIT/n34 ) );
  NAND2X1 U37 ( .A(xmit_dataH[3]), .B(n62), .Y(n65) );
  OAI221XL U38 ( .A0(n106), .A1(n50), .B0(n107), .B1(n44), .C0(n66), .Y(
        \iXMIT/n33 ) );
  NAND2X1 U39 ( .A(xmit_dataH[4]), .B(n62), .Y(n66) );
  OAI221XL U40 ( .A0(n33), .A1(n50), .B0(n105), .B1(n44), .C0(n67), .Y(
        \iXMIT/n32 ) );
  NAND2X1 U41 ( .A(xmit_dataH[6]), .B(n62), .Y(n67) );
  OAI221XL U42 ( .A0(n105), .A1(n50), .B0(n106), .B1(n44), .C0(n68), .Y(
        \iXMIT/n31 ) );
  NAND2X1 U43 ( .A(xmit_dataH[5]), .B(n62), .Y(n68) );
  NAND2X1 U44 ( .A(n69), .B(n44), .Y(n50) );
  AO21X1 U45 ( .A0(n17), .A1(n103), .B0(n62), .Y(n44) );
  CLKINVX1 U46 ( .A(n69), .Y(n62) );
  NAND3X1 U47 ( .A(n112), .B(n113), .C(xmitH), .Y(n69) );
  NOR2X1 U48 ( .A(n70), .B(n71), .Y(\iXMIT/N35 ) );
  XOR2X1 U49 ( .A(n98), .B(\iXMIT/add_71_S2/carry[4] ), .Y(n71) );
  NOR2BX1 U50 ( .AN(\iXMIT/N29 ), .B(n70), .Y(\iXMIT/N34 ) );
  NOR2BX1 U51 ( .AN(\iXMIT/N28 ), .B(n70), .Y(\iXMIT/N33 ) );
  NOR2BX1 U52 ( .AN(\iXMIT/N27 ), .B(n70), .Y(\iXMIT/N32 ) );
  NOR2X1 U53 ( .A(n70), .B(\iXMIT/bitCell_cntrH[0] ), .Y(\iXMIT/N31 ) );
  AOI221XL U54 ( .A0(n37), .A1(n43), .B0(n39), .B1(n42), .C0(n48), .Y(n70) );
  CLKINVX1 U55 ( .A(n40), .Y(n48) );
  NAND2BX1 U56 ( .AN(n35), .B(n37), .Y(n40) );
  NAND2BX1 U57 ( .AN(n103), .B(n17), .Y(n35) );
  NOR2X1 U58 ( .A(n17), .B(n103), .Y(n42) );
  NAND2X1 U59 ( .A(\iXMIT/n67 ), .B(n72), .Y(n39) );
  CLKINVX1 U60 ( .A(n45), .Y(n43) );
  NAND2X1 U61 ( .A(n103), .B(n25), .Y(n45) );
  NAND2X1 U62 ( .A(n72), .B(\iXMIT/bitCell_cntrH[0] ), .Y(n37) );
  AND4X1 U63 ( .A(n98), .B(\iXMIT/bitCell_cntrH[1] ), .C(
        \iXMIT/bitCell_cntrH[3] ), .D(\iXMIT/bitCell_cntrH[2] ), .Y(n72) );
  NOR2BX1 U64 ( .AN(n73), .B(n74), .Y(\iRECEIVER/next_state[2] ) );
  OAI211X1 U65 ( .A0(n75), .A1(n23), .B0(n76), .C0(n77), .Y(
        \iRECEIVER/next_state[1] ) );
  NAND3X1 U66 ( .A(n117), .B(n122), .C(n124), .Y(n76) );
  NOR4BX1 U67 ( .AN(n78), .B(n123), .C(n124), .D(n18), .Y(n75) );
  NAND4BX1 U68 ( .AN(\iRECEIVER/rec_readyInH ), .B(n77), .C(n79), .D(n80), .Y(
        \iRECEIVER/next_state[0] ) );
  NAND4BX1 U69 ( .AN(n118), .B(n81), .C(n121), .D(n82), .Y(n79) );
  NOR2X1 U70 ( .A(n28), .B(n19), .Y(n82) );
  AOI2BB1X1 U71 ( .A0N(n73), .A1N(n74), .B0(n83), .Y(n77) );
  CLKINVX1 U72 ( .A(n81), .Y(n74) );
  NOR2X1 U73 ( .A(n125), .B(n122), .Y(n81) );
  OAI21XL U74 ( .A0(n117), .A1(n125), .B0(n84), .Y(\iRECEIVER/rec_readyInH )
         );
  MXI2X1 U75 ( .A(n85), .B(n86), .S0(n121), .Y(\iRECEIVER/n59 ) );
  MXI2X1 U76 ( .A(n87), .B(n88), .S0(n120), .Y(\iRECEIVER/n58 ) );
  NAND2X1 U77 ( .A(n83), .B(n27), .Y(n88) );
  CLKMX2X2 U78 ( .A(n89), .B(n90), .S0(n19), .Y(\iRECEIVER/n57 ) );
  MXI2X1 U79 ( .A(n91), .B(n92), .S0(n118), .Y(\iRECEIVER/n56 ) );
  NAND2X1 U80 ( .A(n89), .B(n19), .Y(n92) );
  NOR3X1 U81 ( .A(n121), .B(n120), .C(n86), .Y(n89) );
  AOI21X1 U82 ( .A0(n83), .A1(n119), .B0(n90), .Y(n91) );
  OAI21XL U83 ( .A0(n28), .A1(n86), .B0(n87), .Y(n90) );
  OA21XL U84 ( .A0(n27), .A1(n86), .B0(n85), .Y(n87) );
  NAND2X1 U85 ( .A(n86), .B(n84), .Y(n85) );
  NAND3BX1 U86 ( .AN(n124), .B(n122), .C(n117), .Y(n84) );
  CLKINVX1 U87 ( .A(n83), .Y(n86) );
  MXI2X1 U88 ( .A(n29), .B(n124), .S0(n83), .Y(\iRECEIVER/n52 ) );
  MXI2X1 U89 ( .A(n20), .B(n29), .S0(n83), .Y(\iRECEIVER/n51 ) );
  MXI2X1 U90 ( .A(n30), .B(n20), .S0(n83), .Y(\iRECEIVER/n50 ) );
  MXI2X1 U91 ( .A(n21), .B(n30), .S0(n83), .Y(\iRECEIVER/n49 ) );
  MXI2X1 U92 ( .A(n31), .B(n21), .S0(n83), .Y(\iRECEIVER/n48 ) );
  MXI2X1 U93 ( .A(n22), .B(n31), .S0(n83), .Y(\iRECEIVER/n47 ) );
  MXI2X1 U94 ( .A(n32), .B(n22), .S0(n83), .Y(\iRECEIVER/n46 ) );
  MXI2X1 U95 ( .A(\iRECEIVER/n44 ), .B(n32), .S0(n83), .Y(\iRECEIVER/n45 ) );
  NOR2X1 U96 ( .A(n23), .B(n117), .Y(n83) );
  NOR2X1 U97 ( .A(n93), .B(n94), .Y(\iRECEIVER/N27 ) );
  XOR2X1 U98 ( .A(n24), .B(n95), .Y(n93) );
  AOI211X1 U99 ( .A0(n18), .A1(n96), .B0(n94), .C0(n95), .Y(\iRECEIVER/N26 )
         );
  NOR2X1 U100 ( .A(n96), .B(n18), .Y(n95) );
  NOR3BXL U101 ( .AN(n96), .B(n94), .C(n78), .Y(\iRECEIVER/N25 ) );
  NAND2X1 U102 ( .A(n114), .B(n115), .Y(n96) );
  NOR2X1 U103 ( .A(n114), .B(n94), .Y(\iRECEIVER/N24 ) );
  NAND4BX1 U104 ( .AN(n122), .B(n117), .C(n97), .D(n80), .Y(n94) );
  NAND4X1 U105 ( .A(n78), .B(n125), .C(n116), .D(n24), .Y(n80) );
  NOR2X1 U106 ( .A(n114), .B(n115), .Y(n78) );
  NAND2X1 U107 ( .A(n73), .B(n23), .Y(n97) );
  NOR4BX1 U108 ( .AN(n115), .B(n18), .C(n24), .D(n114), .Y(n73) );

