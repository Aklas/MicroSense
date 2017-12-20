// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
// Date        : Fri Dec  8 03:49:16 2017
// Host        : DESKTOP-N854F8E running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ microSense_top_level_top_level_SAR_0_0_sim_netlist.v
// Design      : microSense_top_level_top_level_SAR_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PWM_generator
   (output_pwm,
    Q,
    DI,
    \iduty_reg[8] ,
    \iduty_reg[8]_0 ,
    clk);
  output output_pwm;
  output [8:0]Q;
  input [3:0]DI;
  input [0:0]\iduty_reg[8] ;
  input [8:0]\iduty_reg[8]_0 ;
  input clk;

  wire [3:0]DI;
  wire PWM0_carry__0_i_2_n_0;
  wire PWM0_carry_i_5_n_0;
  wire PWM0_carry_i_6_n_0;
  wire PWM0_carry_i_7_n_0;
  wire PWM0_carry_i_8_n_0;
  wire PWM0_carry_n_0;
  wire PWM0_carry_n_1;
  wire PWM0_carry_n_2;
  wire PWM0_carry_n_3;
  wire [8:0]Q;
  wire clk;
  wire [8:0]counter;
  wire \counter[8]_i_2_n_0 ;
  wire [0:0]\iduty_reg[8] ;
  wire [8:0]\iduty_reg[8]_0 ;
  wire output_pwm;
  wire [3:0]NLW_PWM0_carry_O_UNCONNECTED;
  wire [3:1]NLW_PWM0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_PWM0_carry__0_O_UNCONNECTED;

  CARRY4 PWM0_carry
       (.CI(1'b0),
        .CO({PWM0_carry_n_0,PWM0_carry_n_1,PWM0_carry_n_2,PWM0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(DI),
        .O(NLW_PWM0_carry_O_UNCONNECTED[3:0]),
        .S({PWM0_carry_i_5_n_0,PWM0_carry_i_6_n_0,PWM0_carry_i_7_n_0,PWM0_carry_i_8_n_0}));
  CARRY4 PWM0_carry__0
       (.CI(PWM0_carry_n_0),
        .CO({NLW_PWM0_carry__0_CO_UNCONNECTED[3:1],output_pwm}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\iduty_reg[8] }),
        .O(NLW_PWM0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,PWM0_carry__0_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    PWM0_carry__0_i_2
       (.I0(Q[8]),
        .I1(\iduty_reg[8]_0 [8]),
        .O(PWM0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    PWM0_carry_i_5
       (.I0(Q[7]),
        .I1(\iduty_reg[8]_0 [7]),
        .I2(Q[6]),
        .I3(\iduty_reg[8]_0 [6]),
        .O(PWM0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    PWM0_carry_i_6
       (.I0(Q[5]),
        .I1(\iduty_reg[8]_0 [5]),
        .I2(Q[4]),
        .I3(\iduty_reg[8]_0 [4]),
        .O(PWM0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    PWM0_carry_i_7
       (.I0(Q[3]),
        .I1(\iduty_reg[8]_0 [3]),
        .I2(Q[2]),
        .I3(\iduty_reg[8]_0 [2]),
        .O(PWM0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    PWM0_carry_i_8
       (.I0(Q[1]),
        .I1(\iduty_reg[8]_0 [1]),
        .I2(Q[0]),
        .I3(\iduty_reg[8]_0 [0]),
        .O(PWM0_carry_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(Q[0]),
        .O(counter[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(counter[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \counter[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(counter[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \counter[3]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(counter[3]));
  LUT6 #(
    .INIT(64'hFFFF00000000FFF7)) 
    \counter[4]_i_1 
       (.I0(Q[8]),
        .I1(Q[7]),
        .I2(Q[5]),
        .I3(Q[6]),
        .I4(\counter[8]_i_2_n_0 ),
        .I5(Q[4]),
        .O(counter[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \counter[5]_i_1 
       (.I0(Q[5]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(counter[5]));
  LUT4 #(
    .INIT(16'hA6AA)) 
    \counter[6]_i_1 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(\counter[8]_i_2_n_0 ),
        .I3(Q[5]),
        .O(counter[6]));
  LUT6 #(
    .INIT(64'hFF3FFFFD00C00000)) 
    \counter[7]_i_1 
       (.I0(Q[8]),
        .I1(Q[6]),
        .I2(Q[4]),
        .I3(\counter[8]_i_2_n_0 ),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(counter[7]));
  LUT6 #(
    .INIT(64'hDFFEFFFF20000000)) 
    \counter[8]_i_1 
       (.I0(Q[5]),
        .I1(\counter[8]_i_2_n_0 ),
        .I2(Q[4]),
        .I3(Q[6]),
        .I4(Q[7]),
        .I5(Q[8]),
        .O(counter[8]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \counter[8]_i_2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(\counter[8]_i_2_n_0 ));
  FDRE \counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(counter[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(counter[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(counter[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(counter[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(counter[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(counter[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(counter[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(counter[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(counter[8]),
        .Q(Q[8]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SAR
   (DI,
    Q,
    output_pwm,
    clk,
    etx_reset,
    \counter_reg[8] ,
    flip_state);
  output [3:0]DI;
  output [8:0]Q;
  output [0:0]output_pwm;
  input clk;
  input etx_reset;
  input [8:0]\counter_reg[8] ;
  input flip_state;

  wire [3:0]DI;
  wire [8:0]Q;
  wire bit_counter;
  wire [3:0]bit_counter0;
  wire \bit_counter[3]_i_1_n_0 ;
  wire [3:0]bit_counter_reg__0;
  wire clk;
  wire counter_i_1_n_0;
  wire [8:0]\counter_reg[8] ;
  wire counter_reg_n_0;
  wire duty0;
  wire enable_read_i_1_n_0;
  wire enable_read_reg_n_0;
  wire etx_reset;
  wire flip_state;
  wire \iduty[0]_i_1_n_0 ;
  wire \iduty[1]_i_1_n_0 ;
  wire \iduty[2]_i_1_n_0 ;
  wire \iduty[2]_i_2_n_0 ;
  wire \iduty[3]_i_1_n_0 ;
  wire \iduty[3]_i_2_n_0 ;
  wire \iduty[3]_i_3_n_0 ;
  wire \iduty[4]_i_1_n_0 ;
  wire \iduty[4]_i_2_n_0 ;
  wire \iduty[5]_i_1_n_0 ;
  wire \iduty[6]_i_1_n_0 ;
  wire \iduty[6]_i_2_n_0 ;
  wire \iduty[7]_i_1_n_0 ;
  wire \iduty[7]_i_2_n_0 ;
  wire \iduty[7]_i_3_n_0 ;
  wire \iduty[7]_i_4_n_0 ;
  wire \iduty[8]_i_2_n_0 ;
  wire [8:1]isample;
  wire \isample[1]_i_1_n_0 ;
  wire \isample[2]_i_1_n_0 ;
  wire \isample[3]_i_1_n_0 ;
  wire \isample[3]_i_2_n_0 ;
  wire \isample[4]_i_1_n_0 ;
  wire \isample[5]_i_1_n_0 ;
  wire \isample[6]_i_1_n_0 ;
  wire \isample[7]_i_1_n_0 ;
  wire \isample[7]_i_2_n_0 ;
  wire \isample[8]_i_1_n_0 ;
  wire \isample[8]_i_2_n_0 ;
  wire \isample[8]_i_3_n_0 ;
  wire [0:0]output_pwm;
  wire pass_sample_i_1_n_0;
  wire pass_sample_reg_n_0;

  LUT2 #(
    .INIT(4'h2)) 
    PWM0_carry__0_i_1
       (.I0(Q[8]),
        .I1(\counter_reg[8] [8]),
        .O(output_pwm));
  LUT4 #(
    .INIT(16'h22B2)) 
    PWM0_carry_i_1
       (.I0(Q[7]),
        .I1(\counter_reg[8] [7]),
        .I2(Q[6]),
        .I3(\counter_reg[8] [6]),
        .O(DI[3]));
  LUT4 #(
    .INIT(16'h22B2)) 
    PWM0_carry_i_2
       (.I0(Q[5]),
        .I1(\counter_reg[8] [5]),
        .I2(Q[4]),
        .I3(\counter_reg[8] [4]),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'h22B2)) 
    PWM0_carry_i_3
       (.I0(Q[3]),
        .I1(\counter_reg[8] [3]),
        .I2(Q[2]),
        .I3(\counter_reg[8] [2]),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h22B2)) 
    PWM0_carry_i_4
       (.I0(Q[1]),
        .I1(\counter_reg[8] [1]),
        .I2(Q[0]),
        .I3(\counter_reg[8] [0]),
        .O(DI[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \bit_counter[0]_i_1 
       (.I0(bit_counter_reg__0[0]),
        .O(bit_counter0[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \bit_counter[1]_i_1 
       (.I0(bit_counter_reg__0[1]),
        .I1(bit_counter_reg__0[0]),
        .O(bit_counter0[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \bit_counter[2]_i_1 
       (.I0(bit_counter_reg__0[2]),
        .I1(bit_counter_reg__0[0]),
        .I2(bit_counter_reg__0[1]),
        .O(bit_counter0[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFAA008080)) 
    \bit_counter[3]_i_1 
       (.I0(pass_sample_reg_n_0),
        .I1(\isample[8]_i_3_n_0 ),
        .I2(bit_counter_reg__0[3]),
        .I3(enable_read_reg_n_0),
        .I4(counter_reg_n_0),
        .I5(etx_reset),
        .O(\bit_counter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCC888888880)) 
    \bit_counter[3]_i_2 
       (.I0(counter_reg_n_0),
        .I1(enable_read_reg_n_0),
        .I2(bit_counter_reg__0[2]),
        .I3(bit_counter_reg__0[0]),
        .I4(bit_counter_reg__0[1]),
        .I5(bit_counter_reg__0[3]),
        .O(bit_counter));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \bit_counter[3]_i_3 
       (.I0(bit_counter_reg__0[3]),
        .I1(bit_counter_reg__0[1]),
        .I2(bit_counter_reg__0[0]),
        .I3(bit_counter_reg__0[2]),
        .O(bit_counter0[3]));
  FDRE \bit_counter_reg[0] 
       (.C(clk),
        .CE(bit_counter),
        .D(bit_counter0[0]),
        .Q(bit_counter_reg__0[0]),
        .R(\bit_counter[3]_i_1_n_0 ));
  FDRE \bit_counter_reg[1] 
       (.C(clk),
        .CE(bit_counter),
        .D(bit_counter0[1]),
        .Q(bit_counter_reg__0[1]),
        .R(\bit_counter[3]_i_1_n_0 ));
  FDRE \bit_counter_reg[2] 
       (.C(clk),
        .CE(bit_counter),
        .D(bit_counter0[2]),
        .Q(bit_counter_reg__0[2]),
        .R(\bit_counter[3]_i_1_n_0 ));
  FDSE \bit_counter_reg[3] 
       (.C(clk),
        .CE(bit_counter),
        .D(bit_counter0[3]),
        .Q(bit_counter_reg__0[3]),
        .S(\bit_counter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000444444444)) 
    counter_i_1
       (.I0(etx_reset),
        .I1(counter_reg_n_0),
        .I2(pass_sample_reg_n_0),
        .I3(\isample[8]_i_3_n_0 ),
        .I4(bit_counter_reg__0[3]),
        .I5(enable_read_reg_n_0),
        .O(counter_i_1_n_0));
  FDRE counter_reg
       (.C(clk),
        .CE(1'b1),
        .D(counter_i_1_n_0),
        .Q(counter_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h4545454540000000)) 
    enable_read_i_1
       (.I0(etx_reset),
        .I1(pass_sample_reg_n_0),
        .I2(enable_read_reg_n_0),
        .I3(bit_counter_reg__0[3]),
        .I4(\isample[8]_i_3_n_0 ),
        .I5(counter_reg_n_0),
        .O(enable_read_i_1_n_0));
  FDRE enable_read_reg
       (.C(clk),
        .CE(1'b1),
        .D(enable_read_i_1_n_0),
        .Q(enable_read_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h5555555444444445)) 
    \iduty[0]_i_1 
       (.I0(etx_reset),
        .I1(counter_reg_n_0),
        .I2(bit_counter_reg__0[2]),
        .I3(bit_counter_reg__0[0]),
        .I4(bit_counter_reg__0[1]),
        .I5(bit_counter_reg__0[3]),
        .O(\iduty[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888F88888)) 
    \iduty[1]_i_1 
       (.I0(isample[1]),
        .I1(\iduty[2]_i_2_n_0 ),
        .I2(\iduty[3]_i_3_n_0 ),
        .I3(bit_counter_reg__0[1]),
        .I4(bit_counter_reg__0[0]),
        .I5(bit_counter_reg__0[2]),
        .O(\iduty[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888F88888)) 
    \iduty[2]_i_1 
       (.I0(isample[2]),
        .I1(\iduty[2]_i_2_n_0 ),
        .I2(\iduty[3]_i_3_n_0 ),
        .I3(bit_counter_reg__0[0]),
        .I4(bit_counter_reg__0[1]),
        .I5(bit_counter_reg__0[2]),
        .O(\iduty[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555555444444545)) 
    \iduty[2]_i_2 
       (.I0(etx_reset),
        .I1(counter_reg_n_0),
        .I2(bit_counter_reg__0[2]),
        .I3(bit_counter_reg__0[0]),
        .I4(bit_counter_reg__0[1]),
        .I5(bit_counter_reg__0[3]),
        .O(\iduty[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h08080808FF080808)) 
    \iduty[3]_i_1 
       (.I0(\iduty[3]_i_2_n_0 ),
        .I1(isample[3]),
        .I2(etx_reset),
        .I3(\iduty[3]_i_3_n_0 ),
        .I4(\iduty[7]_i_3_n_0 ),
        .I5(bit_counter_reg__0[2]),
        .O(\iduty[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFAAFEFF)) 
    \iduty[3]_i_2 
       (.I0(counter_reg_n_0),
        .I1(bit_counter_reg__0[1]),
        .I2(bit_counter_reg__0[0]),
        .I3(bit_counter_reg__0[3]),
        .I4(bit_counter_reg__0[2]),
        .O(\iduty[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \iduty[3]_i_3 
       (.I0(etx_reset),
        .I1(bit_counter_reg__0[3]),
        .I2(counter_reg_n_0),
        .O(\iduty[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA30000A8AA)) 
    \iduty[4]_i_1 
       (.I0(isample[4]),
        .I1(\iduty[4]_i_2_n_0 ),
        .I2(counter_reg_n_0),
        .I3(bit_counter_reg__0[3]),
        .I4(etx_reset),
        .I5(bit_counter_reg__0[2]),
        .O(\iduty[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \iduty[4]_i_2 
       (.I0(bit_counter_reg__0[0]),
        .I1(bit_counter_reg__0[1]),
        .O(\iduty[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0808FF0808080808)) 
    \iduty[5]_i_1 
       (.I0(\iduty[6]_i_2_n_0 ),
        .I1(isample[5]),
        .I2(etx_reset),
        .I3(bit_counter_reg__0[0]),
        .I4(bit_counter_reg__0[1]),
        .I5(\iduty[7]_i_2_n_0 ),
        .O(\iduty[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0808FF0808080808)) 
    \iduty[6]_i_1 
       (.I0(\iduty[6]_i_2_n_0 ),
        .I1(isample[6]),
        .I2(etx_reset),
        .I3(bit_counter_reg__0[1]),
        .I4(bit_counter_reg__0[0]),
        .I5(\iduty[7]_i_2_n_0 ),
        .O(\iduty[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFDDFB)) 
    \iduty[6]_i_2 
       (.I0(bit_counter_reg__0[2]),
        .I1(bit_counter_reg__0[3]),
        .I2(bit_counter_reg__0[0]),
        .I3(bit_counter_reg__0[1]),
        .I4(counter_reg_n_0),
        .O(\iduty[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88888888F888FF88)) 
    \iduty[7]_i_1 
       (.I0(\iduty[7]_i_2_n_0 ),
        .I1(\iduty[7]_i_3_n_0 ),
        .I2(\iduty[7]_i_4_n_0 ),
        .I3(isample[7]),
        .I4(bit_counter_reg__0[3]),
        .I5(etx_reset),
        .O(\iduty[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \iduty[7]_i_2 
       (.I0(counter_reg_n_0),
        .I1(bit_counter_reg__0[3]),
        .I2(etx_reset),
        .I3(bit_counter_reg__0[2]),
        .O(\iduty[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \iduty[7]_i_3 
       (.I0(bit_counter_reg__0[0]),
        .I1(bit_counter_reg__0[1]),
        .O(\iduty[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \iduty[7]_i_4 
       (.I0(bit_counter_reg__0[2]),
        .I1(bit_counter_reg__0[0]),
        .I2(bit_counter_reg__0[1]),
        .I3(counter_reg_n_0),
        .O(\iduty[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00015555)) 
    \iduty[8]_i_1 
       (.I0(counter_reg_n_0),
        .I1(bit_counter_reg__0[2]),
        .I2(bit_counter_reg__0[0]),
        .I3(bit_counter_reg__0[1]),
        .I4(bit_counter_reg__0[3]),
        .I5(etx_reset),
        .O(duty0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h0000ABAA)) 
    \iduty[8]_i_2 
       (.I0(isample[8]),
        .I1(\isample[8]_i_3_n_0 ),
        .I2(counter_reg_n_0),
        .I3(bit_counter_reg__0[3]),
        .I4(etx_reset),
        .O(\iduty[8]_i_2_n_0 ));
  FDRE \iduty_reg[0] 
       (.C(clk),
        .CE(duty0),
        .D(\iduty[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \iduty_reg[1] 
       (.C(clk),
        .CE(duty0),
        .D(\iduty[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \iduty_reg[2] 
       (.C(clk),
        .CE(duty0),
        .D(\iduty[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \iduty_reg[3] 
       (.C(clk),
        .CE(duty0),
        .D(\iduty[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \iduty_reg[4] 
       (.C(clk),
        .CE(duty0),
        .D(\iduty[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \iduty_reg[5] 
       (.C(clk),
        .CE(duty0),
        .D(\iduty[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \iduty_reg[6] 
       (.C(clk),
        .CE(duty0),
        .D(\iduty[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \iduty_reg[7] 
       (.C(clk),
        .CE(duty0),
        .D(\iduty[7]_i_1_n_0 ),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \iduty_reg[8] 
       (.C(clk),
        .CE(duty0),
        .D(\iduty[8]_i_2_n_0 ),
        .Q(Q[8]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \isample[1]_i_1 
       (.I0(flip_state),
        .I1(bit_counter_reg__0[2]),
        .I2(bit_counter_reg__0[0]),
        .I3(bit_counter_reg__0[1]),
        .I4(\isample[3]_i_2_n_0 ),
        .I5(isample[1]),
        .O(\isample[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \isample[2]_i_1 
       (.I0(flip_state),
        .I1(bit_counter_reg__0[2]),
        .I2(bit_counter_reg__0[1]),
        .I3(bit_counter_reg__0[0]),
        .I4(\isample[3]_i_2_n_0 ),
        .I5(isample[2]),
        .O(\isample[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \isample[3]_i_1 
       (.I0(flip_state),
        .I1(bit_counter_reg__0[2]),
        .I2(bit_counter_reg__0[0]),
        .I3(bit_counter_reg__0[1]),
        .I4(\isample[3]_i_2_n_0 ),
        .I5(isample[3]),
        .O(\isample[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \isample[3]_i_2 
       (.I0(enable_read_reg_n_0),
        .I1(counter_reg_n_0),
        .I2(pass_sample_reg_n_0),
        .I3(bit_counter_reg__0[3]),
        .O(\isample[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \isample[4]_i_1 
       (.I0(flip_state),
        .I1(\isample[7]_i_2_n_0 ),
        .I2(bit_counter_reg__0[1]),
        .I3(bit_counter_reg__0[0]),
        .I4(isample[4]),
        .O(\isample[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFBFF0800)) 
    \isample[5]_i_1 
       (.I0(flip_state),
        .I1(\isample[7]_i_2_n_0 ),
        .I2(bit_counter_reg__0[1]),
        .I3(bit_counter_reg__0[0]),
        .I4(isample[5]),
        .O(\isample[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFBFF0800)) 
    \isample[6]_i_1 
       (.I0(flip_state),
        .I1(\isample[7]_i_2_n_0 ),
        .I2(bit_counter_reg__0[0]),
        .I3(bit_counter_reg__0[1]),
        .I4(isample[6]),
        .O(\isample[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \isample[7]_i_1 
       (.I0(flip_state),
        .I1(\isample[7]_i_2_n_0 ),
        .I2(bit_counter_reg__0[1]),
        .I3(bit_counter_reg__0[0]),
        .I4(isample[7]),
        .O(\isample[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \isample[7]_i_2 
       (.I0(bit_counter_reg__0[3]),
        .I1(pass_sample_reg_n_0),
        .I2(counter_reg_n_0),
        .I3(enable_read_reg_n_0),
        .I4(bit_counter_reg__0[2]),
        .O(\isample[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00010000)) 
    \isample[8]_i_1 
       (.I0(bit_counter_reg__0[2]),
        .I1(bit_counter_reg__0[0]),
        .I2(bit_counter_reg__0[1]),
        .I3(counter_reg_n_0),
        .I4(bit_counter_reg__0[3]),
        .I5(etx_reset),
        .O(\isample[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \isample[8]_i_2 
       (.I0(flip_state),
        .I1(bit_counter_reg__0[3]),
        .I2(enable_read_reg_n_0),
        .I3(pass_sample_reg_n_0),
        .I4(\isample[8]_i_3_n_0 ),
        .I5(isample[8]),
        .O(\isample[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \isample[8]_i_3 
       (.I0(bit_counter_reg__0[1]),
        .I1(bit_counter_reg__0[0]),
        .I2(bit_counter_reg__0[2]),
        .O(\isample[8]_i_3_n_0 ));
  FDRE \isample_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\isample[1]_i_1_n_0 ),
        .Q(isample[1]),
        .R(\isample[8]_i_1_n_0 ));
  FDRE \isample_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\isample[2]_i_1_n_0 ),
        .Q(isample[2]),
        .R(\isample[8]_i_1_n_0 ));
  FDRE \isample_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\isample[3]_i_1_n_0 ),
        .Q(isample[3]),
        .R(\isample[8]_i_1_n_0 ));
  FDRE \isample_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\isample[4]_i_1_n_0 ),
        .Q(isample[4]),
        .R(\isample[8]_i_1_n_0 ));
  FDRE \isample_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\isample[5]_i_1_n_0 ),
        .Q(isample[5]),
        .R(\isample[8]_i_1_n_0 ));
  FDRE \isample_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\isample[6]_i_1_n_0 ),
        .Q(isample[6]),
        .R(\isample[8]_i_1_n_0 ));
  FDRE \isample_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\isample[7]_i_1_n_0 ),
        .Q(isample[7]),
        .R(\isample[8]_i_1_n_0 ));
  FDRE \isample_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\isample[8]_i_2_n_0 ),
        .Q(isample[8]),
        .R(\isample[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000027770008)) 
    pass_sample_i_1
       (.I0(counter_reg_n_0),
        .I1(enable_read_reg_n_0),
        .I2(bit_counter_reg__0[3]),
        .I3(\isample[8]_i_3_n_0 ),
        .I4(pass_sample_reg_n_0),
        .I5(etx_reset),
        .O(pass_sample_i_1_n_0));
  FDRE pass_sample_reg
       (.C(clk),
        .CE(1'b1),
        .D(pass_sample_i_1_n_0),
        .Q(pass_sample_reg_n_0),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "microSense_top_level_top_level_SAR_0_0,top_level_SAR,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "top_level_SAR,Vivado 2017.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    etx_reset,
    flip_state,
    output_pwm,
    average);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN microSense_top_level_sys_clock" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 etx_reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME etx_reset, POLARITY ACTIVE_HIGH" *) input etx_reset;
  input flip_state;
  output output_pwm;
  output [8:0]average;

  wire clk;
  wire etx_reset;
  wire flip_state;
  wire output_pwm;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_level_SAR U0
       (.clk(clk),
        .etx_reset(etx_reset),
        .flip_state(flip_state),
        .output_pwm(output_pwm));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_level_SAR
   (output_pwm,
    etx_reset,
    flip_state,
    clk);
  output output_pwm;
  input etx_reset;
  input flip_state;
  input clk;

  wire clk;
  wire [8:0]counter;
  wire [8:0]duty;
  wire etx_reset;
  wire flip_state;
  wire output_pwm;
  wire the_SAR_n_0;
  wire the_SAR_n_1;
  wire the_SAR_n_13;
  wire the_SAR_n_2;
  wire the_SAR_n_3;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PWM_generator the_PWM_generator
       (.DI({the_SAR_n_0,the_SAR_n_1,the_SAR_n_2,the_SAR_n_3}),
        .Q(counter),
        .clk(clk),
        .\iduty_reg[8] (the_SAR_n_13),
        .\iduty_reg[8]_0 (duty),
        .output_pwm(output_pwm));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SAR the_SAR
       (.DI({the_SAR_n_0,the_SAR_n_1,the_SAR_n_2,the_SAR_n_3}),
        .Q(duty),
        .clk(clk),
        .\counter_reg[8] (counter),
        .etx_reset(etx_reset),
        .flip_state(flip_state),
        .output_pwm(the_SAR_n_13));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
