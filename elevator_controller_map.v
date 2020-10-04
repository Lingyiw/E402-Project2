
// Generated by Cadence Encounter(R) RTL Compiler RC14.13 - v14.10-s027_1

// Verification Directory fv/elevator_controller 

module counter(clk, counter_rst, counter_en, count);
  input clk, counter_rst, counter_en;
  output [3:0] count;
  wire clk, counter_rst, counter_en;
  wire [3:0] count;
  wire n_0, n_2, n_3, n_4, n_5, n_6, n_7, n_8;
  wire n_9, n_10, n_11, n_12, n_13, n_14, n_15;
  DFFSNQ_X1 \count_reg[3] (.SN (1'b1), .CLK (clk), .D (n_15), .Q
       (count[3]));
  NOR2_X1 g63(.A1 (n_14), .A2 (counter_rst), .ZN (n_15));
  DFFSNQ_X1 \count_reg[2] (.SN (1'b1), .CLK (clk), .D (n_13), .Q
       (count[2]));
  AOI22_X1 g65(.A1 (n_11), .A2 (counter_en), .B1 (n_2), .B2 (count[3]),
       .ZN (n_14));
  NOR2_X1 g66(.A1 (n_12), .A2 (counter_rst), .ZN (n_13));
  AOI22_X1 g67(.A1 (n_0), .A2 (counter_en), .B1 (n_2), .B2 (count[2]),
       .ZN (n_12));
  XNOR2_X1 g68(.A1 (n_8), .A2 (count[3]), .ZN (n_11));
  DFFSNQ_X1 \count_reg[1] (.SN (1'b1), .CLK (clk), .D (n_10), .Q
       (count[1]));
  NOR2_X1 g70(.A1 (n_9), .A2 (counter_rst), .ZN (n_10));
  AOI22_X1 g71(.A1 (n_5), .A2 (counter_en), .B1 (n_2), .B2 (count[1]),
       .ZN (n_9));
  DFFSNQ_X1 \count_reg[0] (.SN (1'b1), .CLK (clk), .D (n_7), .Q
       (count[0]));
  NAND2_X1 g74(.A1 (n_6), .A2 (count[2]), .ZN (n_8));
  NOR2_X1 g75(.A1 (n_4), .A2 (counter_rst), .ZN (n_7));
  HA_X1 g77(.A (count[1]), .B (count[0]), .CO (n_6), .S (n_5));
  AOI22_X1 g78(.A1 (n_2), .A2 (count[0]), .B1 (n_3), .B2 (counter_en),
       .ZN (n_4));
  INV_X1 g79(.I (count[0]), .ZN (n_3));
  INV_X1 g80(.I (counter_en), .ZN (n_2));
  XOR2_X1 g2(.A1 (n_6), .A2 (count[2]), .Z (n_0));
endmodule

module elevator_controller(clk, fsm_en, fsm_rst, upwards, downwards,
     up_request, down_request, close_door, one, two, three, counter_en,
     counter_rst, go_up, go_down, arrived, door_open, door_closed);
  input clk, fsm_en, fsm_rst, upwards, downwards, up_request,
       down_request, close_door, one, two, three;
  output counter_en, counter_rst, go_up, go_down, arrived, door_open,
       door_closed;
  wire clk, fsm_en, fsm_rst, upwards, downwards, up_request,
       down_request, close_door, one, two, three;
  wire counter_en, counter_rst, go_up, go_down, arrived, door_open,
       door_closed;
  wire [3:0] count;
  wire [3:0] state;
  wire [3:0] next_state;
  wire n_1, n_2, n_3, n_4, n_5, n_6, n_7, n_8;
  wire n_9, n_10, n_11, n_12, n_13, n_14, n_15, n_16;
  wire n_17, n_18, n_19, n_20, n_21, n_22, n_23, n_24;
  wire n_25, n_26, n_27, n_28, n_29, n_30, n_31, n_32;
  wire n_33, n_34, n_35, n_36, n_37, n_38, n_39, n_40;
  wire n_41, n_42, n_43, n_44, n_45, n_46, n_47, n_48;
  wire n_49, n_50, n_51, n_53, n_54, n_55, n_56, n_57;
  wire n_58, n_59, n_60, n_61, n_62, n_63, n_64, n_65;
  wire n_66, n_67, n_68, n_69, n_70, n_71, n_72, n_73;
  wire n_74, n_75, n_76, n_77, n_78, n_79, n_80, n_81;
  wire n_82, n_83, n_84, n_89, n_90, n_91, n_92, n_93;
  wire n_94, n_95, n_96, n_97, n_98, n_99, n_100, n_101;
  wire n_102, n_103, n_104, n_105, n_106, n_107, n_113, n_114;
  wire n_118, n_130;
  counter timer(clk, counter_rst, counter_en, count);
  LHQ_X1 arrived_reg(.E (n_114), .D (n_106), .Q (arrived));
  LHQ_X1 counter_rst_reg(.E (n_114), .D (n_105), .Q (counter_rst));
  LHQ_X1 counter_en_reg(.E (n_114), .D (n_107), .Q (counter_en));
  LHQ_X1 door_open_reg(.E (n_114), .D (n_104), .Q (door_open));
  NAND2_X1 g1511(.A1 (n_103), .A2 (n_90), .ZN (n_107));
  OR3_X1 g1512(.A1 (n_96), .A2 (n_100), .A3 (n_95), .Z (n_106));
  OR2_X1 g1513(.A1 (n_96), .A2 (n_102), .Z (n_105));
  LHQ_X1 go_up_reg(.E (n_114), .D (n_97), .Q (go_up));
  LHQ_X1 go_down_reg(.E (n_114), .D (n_98), .Q (go_down));
  LHQ_X1 door_closed_reg(.E (n_114), .D (n_99), .Q (door_closed));
  OAI22_X1 g1517(.A1 (n_93), .A2 (state[0]), .B1 (n_91), .B2 (n_113),
       .ZN (n_104));
  AOI21_X1 g1518(.A1 (n_92), .A2 (state[3]), .B (n_101), .ZN (n_103));
  OAI22_X1 g1519(.A1 (n_118), .A2 (n_91), .B1 (n_93), .B2 (n_5), .ZN
       (n_102));
  NOR2_X1 g1520(.A1 (n_94), .A2 (state[3]), .ZN (n_101));
  NOR2_X1 g1521(.A1 (n_93), .A2 (state[0]), .ZN (n_100));
  NAND3_X1 g1522(.A1 (n_118), .A2 (n_89), .A3 (state[3]), .ZN (n_99));
  NOR3_X1 g1523(.A1 (n_92), .A2 (state[3]), .A3 (state[0]), .ZN (n_98));
  AND3_X1 g1524(.A1 (n_90), .A2 (n_6), .A3 (state[0]), .Z (n_97));
  AND3_X2 g1525(.A1 (n_92), .A2 (n_6), .A3 (n_5), .Z (n_96));
  OR2_X1 g1526(.A1 (n_90), .A2 (n_6), .Z (n_114));
  NOR2_X1 g1527(.A1 (n_91), .A2 (state[2]), .ZN (n_95));
  AOI21_X1 g1528(.A1 (state[0]), .A2 (state[1]), .B (state[2]), .ZN
       (n_94));
  NAND3_X1 g1529(.A1 (state[3]), .A2 (n_8), .A3 (state[2]), .ZN (n_93));
  NAND2_X1 g1530(.A1 (n_5), .A2 (n_7), .ZN (n_118));
  NOR2_X1 g1531(.A1 (state[2]), .A2 (state[1]), .ZN (n_92));
  NAND2_X1 g1532(.A1 (state[3]), .A2 (state[1]), .ZN (n_91));
  NAND2_X1 g1533(.A1 (state[2]), .A2 (state[1]), .ZN (n_90));
  NAND2_X1 g1534(.A1 (state[0]), .A2 (n_8), .ZN (n_89));
  NAND2_X1 g1535(.A1 (state[0]), .A2 (n_7), .ZN (n_113));
  DFFSNQ_X1 \state_reg[2] (.SN (1'b1), .CLK (clk), .D (n_84), .Q
       (state[2]));
  DFFSNQ_X1 \state_reg[0] (.SN (1'b1), .CLK (clk), .D (n_82), .Q
       (state[0]));
  INV_X1 g2583(.I (n_83), .ZN (n_84));
  AOI22_X1 g2584(.A1 (next_state[2]), .A2 (n_27), .B1 (state[2]), .B2
       (n_21), .ZN (n_83));
  DFFSNQ_X1 \state_reg[3] (.SN (1'b1), .CLK (clk), .D (n_80), .Q
       (state[3]));
  INV_X1 g2586(.I (n_81), .ZN (n_82));
  AOI22_X1 g2587(.A1 (next_state[0]), .A2 (n_27), .B1 (state[0]), .B2
       (n_21), .ZN (n_81));
  DFFSNQ_X1 \state_reg[1] (.SN (1'b1), .CLK (clk), .D (n_77), .Q
       (state[1]));
  LHQ_X1 \next_state_reg[2] (.E (n_114), .D (n_78), .Q (next_state[2]));
  INV_X1 g2590(.I (n_79), .ZN (n_80));
  AOI22_X1 g2591(.A1 (next_state[3]), .A2 (n_27), .B1 (state[3]), .B2
       (n_21), .ZN (n_79));
  LHQ_X1 \next_state_reg[0] (.E (n_114), .D (n_75), .Q (next_state[0]));
  OR4_X1 g2593(.A1 (n_71), .A2 (n_63), .A3 (n_54), .A4 (n_32), .Z
       (n_78));
  INV_X1 g2594(.I (n_76), .ZN (n_77));
  AOI22_X1 g2595(.A1 (next_state[1]), .A2 (n_27), .B1 (state[1]), .B2
       (n_21), .ZN (n_76));
  LHQ_X1 \next_state_reg[3] (.E (n_114), .D (n_74), .Q (next_state[3]));
  NAND3_X1 g2597(.A1 (n_72), .A2 (n_53), .A3 (n_59), .ZN (n_75));
  LHQ_X1 \next_state_reg[1] (.E (n_114), .D (n_73), .Q (next_state[1]));
  NAND3_X1 g2599(.A1 (n_70), .A2 (n_69), .A3 (n_17), .ZN (n_74));
  NAND2_X1 g2600(.A1 (n_66), .A2 (n_68), .ZN (n_73));
  OAI21_X1 g2601(.A1 (n_65), .A2 (n_10), .B (n_6), .ZN (n_72));
  AOI21_X1 g2602(.A1 (n_61), .A2 (n_9), .B (n_13), .ZN (n_71));
  OR2_X1 g2603(.A1 (n_62), .A2 (n_7), .Z (n_70));
  OAI21_X1 g2604(.A1 (n_58), .A2 (n_10), .B (state[3]), .ZN (n_69));
  INV_X1 g2605(.I (n_67), .ZN (n_68));
  OAI22_X1 g2606(.A1 (n_60), .A2 (n_15), .B1 (n_118), .B2 (n_17), .ZN
       (n_67));
  AOI21_X1 g2607(.A1 (n_48), .A2 (n_18), .B (n_64), .ZN (n_66));
  OAI21_X1 g2608(.A1 (n_24), .A2 (state[2]), .B (n_57), .ZN (n_65));
  AOI21_X1 g2609(.A1 (n_130), .A2 (n_47), .B (n_13), .ZN (n_64));
  NOR3_X1 g2610(.A1 (n_49), .A2 (n_19), .A3 (n_7), .ZN (n_63));
  AOI22_X1 g2611(.A1 (n_50), .A2 (state[1]), .B1 (n_49), .B2 (n_18),
       .ZN (n_62));
  AOI22_X1 g2612(.A1 (n_51), .A2 (state[2]), .B1 (n_7), .B2
       (close_door), .ZN (n_61));
  NAND2_X1 g2613(.A1 (n_56), .A2 (n_41), .ZN (n_60));
  AOI21_X1 g2614(.A1 (n_16), .A2 (n_113), .B (n_55), .ZN (n_59));
  OAI21_X1 g2615(.A1 (state[0]), .A2 (downwards), .B (n_56), .ZN
       (n_58));
  AOI22_X1 g2616(.A1 (n_40), .A2 (n_12), .B1 (n_46), .B2 (state[0]),
       .ZN (n_57));
  NOR2_X1 g2617(.A1 (n_44), .A2 (n_12), .ZN (n_56));
  AOI21_X1 g2618(.A1 (n_37), .A2 (n_11), .B (n_15), .ZN (n_55));
  NOR2_X1 g2619(.A1 (n_42), .A2 (n_25), .ZN (n_54));
  OAI21_X1 g2620(.A1 (upwards), .A2 (downwards), .B (n_43), .ZN (n_53));
  INV_X1 g2622(.I (n_50), .ZN (n_51));
  AOI22_X1 g2623(.A1 (n_39), .A2 (n_36), .B1 (n_33), .B2 (n_5), .ZN
       (n_50));
  OAI22_X1 g2624(.A1 (n_39), .A2 (n_5), .B1 (state[0]), .B2 (n_29), .ZN
       (n_49));
  OAI21_X1 g2625(.A1 (n_28), .A2 (state[2]), .B (n_38), .ZN (n_48));
  AOI22_X1 g2626(.A1 (n_33), .A2 (n_12), .B1 (n_23), .B2 (n_7), .ZN
       (n_47));
  INV_X1 g2627(.I (n_45), .ZN (n_46));
  OAI21_X1 g2628(.A1 (n_36), .A2 (n_8), .B (n_33), .ZN (n_45));
  AOI21_X1 g2629(.A1 (n_34), .A2 (n_3), .B (state[0]), .ZN (n_44));
  INV_X1 g2630(.I (n_42), .ZN (n_43));
  NAND3_X1 g2631(.A1 (n_34), .A2 (n_14), .A3 (n_5), .ZN (n_42));
  AOI22_X1 g2632(.A1 (n_36), .A2 (n_10), .B1 (state[2]), .B2 (n_26),
       .ZN (n_41));
  OAI22_X1 g2633(.A1 (n_35), .A2 (n_8), .B1 (state[1]), .B2 (n_29), .ZN
       (n_40));
  AND2_X1 g2634(.A1 (n_35), .A2 (n_33), .Z (n_39));
  AOI22_X1 g2635(.A1 (n_12), .A2 (n_29), .B1 (n_10), .B2 (close_door),
       .ZN (n_38));
  AOI22_X1 g2636(.A1 (n_10), .A2 (n_30), .B1 (state[2]), .B2
       (up_request), .ZN (n_37));
  NAND2_X1 g2637(.A1 (n_31), .A2 (count[0]), .ZN (n_36));
  INV_X1 g2638(.I (n_34), .ZN (n_35));
  NOR2_X1 g2639(.A1 (n_30), .A2 (count[0]), .ZN (n_34));
  NAND3_X1 g2640(.A1 (n_22), .A2 (count[0]), .A3 (n_1), .ZN (n_33));
  OAI22_X1 g2641(.A1 (n_11), .A2 (n_15), .B1 (n_17), .B2 (n_113), .ZN
       (n_32));
  INV_X1 g2642(.I (n_30), .ZN (n_31));
  NAND2_X1 g2643(.A1 (n_22), .A2 (count[1]), .ZN (n_30));
  NAND2_X1 g2644(.A1 (n_20), .A2 (three), .ZN (n_29));
  OR2_X1 g2645(.A1 (state[0]), .A2 (n_25), .Z (n_28));
  NOR2_X1 g2646(.A1 (n_4), .A2 (fsm_rst), .ZN (n_27));
  NAND2_X1 g2647(.A1 (n_2), .A2 (down_request), .ZN (n_26));
  NAND2_X1 g2648(.A1 (n_3), .A2 (downwards), .ZN (n_25));
  NAND2_X1 g2649(.A1 (n_8), .A2 (upwards), .ZN (n_24));
  NOR2_X1 g2650(.A1 (state[0]), .A2 (close_door), .ZN (n_23));
  NOR2_X1 g2651(.A1 (count[3]), .A2 (count[2]), .ZN (n_22));
  NOR2_X1 g2652(.A1 (fsm_en), .A2 (fsm_rst), .ZN (n_21));
  NOR2_X1 g2653(.A1 (one), .A2 (two), .ZN (n_20));
  INV_X1 g2654(.I (n_18), .ZN (n_19));
  NOR2_X1 g2655(.A1 (state[1]), .A2 (state[3]), .ZN (n_18));
  INV_X1 g2656(.I (n_16), .ZN (n_17));
  NOR2_X1 g2657(.A1 (n_8), .A2 (n_6), .ZN (n_16));
  INV_X1 g2658(.I (n_15), .ZN (n_14));
  NAND2_X1 g2659(.A1 (n_8), .A2 (state[3]), .ZN (n_15));
  NAND2_X1 g2660(.A1 (state[1]), .A2 (n_6), .ZN (n_13));
  INV_X1 g2661(.I (n_12), .ZN (n_11));
  NOR2_X1 g2662(.A1 (n_7), .A2 (state[0]), .ZN (n_12));
  INV_X1 g2663(.I (n_10), .ZN (n_9));
  NOR2_X1 g2664(.A1 (n_5), .A2 (state[2]), .ZN (n_10));
  INV_X1 g2665(.I (state[1]), .ZN (n_8));
  INV_X1 g2666(.I (state[2]), .ZN (n_7));
  INV_X1 g2667(.I (state[3]), .ZN (n_6));
  INV_X1 g2668(.I (state[0]), .ZN (n_5));
  INV_X1 g2669(.I (fsm_en), .ZN (n_4));
  INV_X1 g2670(.I (upwards), .ZN (n_3));
  INV_X1 g2671(.I (up_request), .ZN (n_2));
  INV_X1 g2672(.I (count[1]), .ZN (n_1));
  NAND2_X1 g2(.A1 (n_39), .A2 (state[2]), .ZN (n_130));
endmodule

