-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
-- Date        : Fri Dec  8 03:08:53 2017
-- Host        : DESKTOP-N854F8E running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ microSense_top_level_top_level_SAR_0_0_sim_netlist.vhdl
-- Design      : microSense_top_level_top_level_SAR_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PWM_generator is
  port (
    output_pwm : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \iduty_reg[8]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \iduty_reg[8]_0\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PWM_generator;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PWM_generator is
  signal \PWM0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal PWM0_carry_i_5_n_0 : STD_LOGIC;
  signal PWM0_carry_i_6_n_0 : STD_LOGIC;
  signal PWM0_carry_i_7_n_0 : STD_LOGIC;
  signal PWM0_carry_i_8_n_0 : STD_LOGIC;
  signal PWM0_carry_n_0 : STD_LOGIC;
  signal PWM0_carry_n_1 : STD_LOGIC;
  signal PWM0_carry_n_2 : STD_LOGIC;
  signal PWM0_carry_n_3 : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal counter : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \counter[8]_i_2_n_0\ : STD_LOGIC;
  signal NLW_PWM0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_PWM0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_PWM0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter[8]_i_2\ : label is "soft_lutpair0";
begin
  Q(8 downto 0) <= \^q\(8 downto 0);
PWM0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => PWM0_carry_n_0,
      CO(2) => PWM0_carry_n_1,
      CO(1) => PWM0_carry_n_2,
      CO(0) => PWM0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => DI(3 downto 0),
      O(3 downto 0) => NLW_PWM0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => PWM0_carry_i_5_n_0,
      S(2) => PWM0_carry_i_6_n_0,
      S(1) => PWM0_carry_i_7_n_0,
      S(0) => PWM0_carry_i_8_n_0
    );
\PWM0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => PWM0_carry_n_0,
      CO(3 downto 1) => \NLW_PWM0_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => output_pwm,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \iduty_reg[8]\(0),
      O(3 downto 0) => \NLW_PWM0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \PWM0_carry__0_i_2_n_0\
    );
\PWM0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(8),
      I1 => \iduty_reg[8]_0\(8),
      O => \PWM0_carry__0_i_2_n_0\
    );
PWM0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(7),
      I1 => \iduty_reg[8]_0\(7),
      I2 => \^q\(6),
      I3 => \iduty_reg[8]_0\(6),
      O => PWM0_carry_i_5_n_0
    );
PWM0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(5),
      I1 => \iduty_reg[8]_0\(5),
      I2 => \^q\(4),
      I3 => \iduty_reg[8]_0\(4),
      O => PWM0_carry_i_6_n_0
    );
PWM0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(3),
      I1 => \iduty_reg[8]_0\(3),
      I2 => \^q\(2),
      I3 => \iduty_reg[8]_0\(2),
      O => PWM0_carry_i_7_n_0
    );
PWM0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(1),
      I1 => \iduty_reg[8]_0\(1),
      I2 => \^q\(0),
      I3 => \iduty_reg[8]_0\(0),
      O => PWM0_carry_i_8_n_0
    );
\counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => counter(0)
    );
\counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => counter(1)
    );
\counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      O => counter(2)
    );
\counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      O => counter(3)
    );
\counter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00000000FFF7"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(7),
      I2 => \^q\(5),
      I3 => \^q\(6),
      I4 => \counter[8]_i_2_n_0\,
      I5 => \^q\(4),
      O => counter(4)
    );
\counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(3),
      I5 => \^q\(4),
      O => counter(5)
    );
\counter[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A6AA"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(4),
      I2 => \counter[8]_i_2_n_0\,
      I3 => \^q\(5),
      O => counter(6)
    );
\counter[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF3FFFFD00C00000"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(6),
      I2 => \^q\(4),
      I3 => \counter[8]_i_2_n_0\,
      I4 => \^q\(5),
      I5 => \^q\(7),
      O => counter(7)
    );
\counter[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFEFFFF20000000"
    )
        port map (
      I0 => \^q\(5),
      I1 => \counter[8]_i_2_n_0\,
      I2 => \^q\(4),
      I3 => \^q\(6),
      I4 => \^q\(7),
      I5 => \^q\(8),
      O => counter(8)
    );
\counter[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      O => \counter[8]_i_2_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => counter(0),
      Q => \^q\(0),
      R => '0'
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => counter(1),
      Q => \^q\(1),
      R => '0'
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => counter(2),
      Q => \^q\(2),
      R => '0'
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => counter(3),
      Q => \^q\(3),
      R => '0'
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => counter(4),
      Q => \^q\(4),
      R => '0'
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => counter(5),
      Q => \^q\(5),
      R => '0'
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => counter(6),
      Q => \^q\(6),
      R => '0'
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => counter(7),
      Q => \^q\(7),
      R => '0'
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => counter(8),
      Q => \^q\(8),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SAR is
  port (
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    output_pwm : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    etx_reset : in STD_LOGIC;
    \counter_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    flip_state : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SAR;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SAR is
  signal \^q\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal bit_counter : STD_LOGIC;
  signal bit_counter0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \bit_counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \bit_counter_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal counter_i_1_n_0 : STD_LOGIC;
  signal counter_reg_n_0 : STD_LOGIC;
  signal duty0 : STD_LOGIC;
  signal enable_read_i_1_n_0 : STD_LOGIC;
  signal enable_read_reg_n_0 : STD_LOGIC;
  signal \iduty[0]_i_1_n_0\ : STD_LOGIC;
  signal \iduty[1]_i_1_n_0\ : STD_LOGIC;
  signal \iduty[2]_i_1_n_0\ : STD_LOGIC;
  signal \iduty[2]_i_2_n_0\ : STD_LOGIC;
  signal \iduty[3]_i_1_n_0\ : STD_LOGIC;
  signal \iduty[3]_i_2_n_0\ : STD_LOGIC;
  signal \iduty[3]_i_3_n_0\ : STD_LOGIC;
  signal \iduty[4]_i_1_n_0\ : STD_LOGIC;
  signal \iduty[4]_i_2_n_0\ : STD_LOGIC;
  signal \iduty[5]_i_1_n_0\ : STD_LOGIC;
  signal \iduty[6]_i_1_n_0\ : STD_LOGIC;
  signal \iduty[6]_i_2_n_0\ : STD_LOGIC;
  signal \iduty[7]_i_1_n_0\ : STD_LOGIC;
  signal \iduty[7]_i_2_n_0\ : STD_LOGIC;
  signal \iduty[7]_i_3_n_0\ : STD_LOGIC;
  signal \iduty[7]_i_4_n_0\ : STD_LOGIC;
  signal \iduty[8]_i_2_n_0\ : STD_LOGIC;
  signal isample : STD_LOGIC_VECTOR ( 8 downto 1 );
  signal \isample[1]_i_1_n_0\ : STD_LOGIC;
  signal \isample[2]_i_1_n_0\ : STD_LOGIC;
  signal \isample[3]_i_1_n_0\ : STD_LOGIC;
  signal \isample[3]_i_2_n_0\ : STD_LOGIC;
  signal \isample[4]_i_1_n_0\ : STD_LOGIC;
  signal \isample[5]_i_1_n_0\ : STD_LOGIC;
  signal \isample[6]_i_1_n_0\ : STD_LOGIC;
  signal \isample[7]_i_1_n_0\ : STD_LOGIC;
  signal \isample[7]_i_2_n_0\ : STD_LOGIC;
  signal \isample[8]_i_1_n_0\ : STD_LOGIC;
  signal \isample[8]_i_2_n_0\ : STD_LOGIC;
  signal \isample[8]_i_3_n_0\ : STD_LOGIC;
  signal pass_sample_i_1_n_0 : STD_LOGIC;
  signal pass_sample_reg_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bit_counter[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \bit_counter[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \bit_counter[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \bit_counter[3]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \iduty[3]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \iduty[3]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \iduty[4]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \iduty[6]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \iduty[7]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \iduty[7]_i_4\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \iduty[8]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \isample[3]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \isample[5]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \isample[7]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \isample[7]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \isample[8]_i_3\ : label is "soft_lutpair8";
begin
  Q(8 downto 0) <= \^q\(8 downto 0);
\PWM0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(8),
      I1 => \counter_reg[8]\(8),
      O => output_pwm(0)
    );
PWM0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^q\(7),
      I1 => \counter_reg[8]\(7),
      I2 => \^q\(6),
      I3 => \counter_reg[8]\(6),
      O => DI(3)
    );
PWM0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^q\(5),
      I1 => \counter_reg[8]\(5),
      I2 => \^q\(4),
      I3 => \counter_reg[8]\(4),
      O => DI(2)
    );
PWM0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^q\(3),
      I1 => \counter_reg[8]\(3),
      I2 => \^q\(2),
      I3 => \counter_reg[8]\(2),
      O => DI(1)
    );
PWM0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^q\(1),
      I1 => \counter_reg[8]\(1),
      I2 => \^q\(0),
      I3 => \counter_reg[8]\(0),
      O => DI(0)
    );
\bit_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_counter_reg__0\(0),
      O => bit_counter0(0)
    );
\bit_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \bit_counter_reg__0\(1),
      I1 => \bit_counter_reg__0\(0),
      O => bit_counter0(1)
    );
\bit_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \bit_counter_reg__0\(2),
      I1 => \bit_counter_reg__0\(0),
      I2 => \bit_counter_reg__0\(1),
      O => bit_counter0(2)
    );
\bit_counter[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAA008080"
    )
        port map (
      I0 => pass_sample_reg_n_0,
      I1 => \isample[8]_i_3_n_0\,
      I2 => \bit_counter_reg__0\(3),
      I3 => enable_read_reg_n_0,
      I4 => counter_reg_n_0,
      I5 => etx_reset,
      O => \bit_counter[3]_i_1_n_0\
    );
\bit_counter[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCC888888880"
    )
        port map (
      I0 => counter_reg_n_0,
      I1 => enable_read_reg_n_0,
      I2 => \bit_counter_reg__0\(2),
      I3 => \bit_counter_reg__0\(0),
      I4 => \bit_counter_reg__0\(1),
      I5 => \bit_counter_reg__0\(3),
      O => bit_counter
    );
\bit_counter[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => \bit_counter_reg__0\(3),
      I1 => \bit_counter_reg__0\(1),
      I2 => \bit_counter_reg__0\(0),
      I3 => \bit_counter_reg__0\(2),
      O => bit_counter0(3)
    );
\bit_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bit_counter,
      D => bit_counter0(0),
      Q => \bit_counter_reg__0\(0),
      R => \bit_counter[3]_i_1_n_0\
    );
\bit_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bit_counter,
      D => bit_counter0(1),
      Q => \bit_counter_reg__0\(1),
      R => \bit_counter[3]_i_1_n_0\
    );
\bit_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bit_counter,
      D => bit_counter0(2),
      Q => \bit_counter_reg__0\(2),
      R => \bit_counter[3]_i_1_n_0\
    );
\bit_counter_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => bit_counter,
      D => bit_counter0(3),
      Q => \bit_counter_reg__0\(3),
      S => \bit_counter[3]_i_1_n_0\
    );
counter_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000444444444"
    )
        port map (
      I0 => etx_reset,
      I1 => counter_reg_n_0,
      I2 => pass_sample_reg_n_0,
      I3 => \isample[8]_i_3_n_0\,
      I4 => \bit_counter_reg__0\(3),
      I5 => enable_read_reg_n_0,
      O => counter_i_1_n_0
    );
counter_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => counter_i_1_n_0,
      Q => counter_reg_n_0,
      R => '0'
    );
enable_read_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4545454540000000"
    )
        port map (
      I0 => etx_reset,
      I1 => pass_sample_reg_n_0,
      I2 => enable_read_reg_n_0,
      I3 => \bit_counter_reg__0\(3),
      I4 => \isample[8]_i_3_n_0\,
      I5 => counter_reg_n_0,
      O => enable_read_i_1_n_0
    );
enable_read_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => enable_read_i_1_n_0,
      Q => enable_read_reg_n_0,
      R => '0'
    );
\iduty[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555444444445"
    )
        port map (
      I0 => etx_reset,
      I1 => counter_reg_n_0,
      I2 => \bit_counter_reg__0\(2),
      I3 => \bit_counter_reg__0\(0),
      I4 => \bit_counter_reg__0\(1),
      I5 => \bit_counter_reg__0\(3),
      O => \iduty[0]_i_1_n_0\
    );
\iduty[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888F88888"
    )
        port map (
      I0 => isample(1),
      I1 => \iduty[2]_i_2_n_0\,
      I2 => \iduty[3]_i_3_n_0\,
      I3 => \bit_counter_reg__0\(1),
      I4 => \bit_counter_reg__0\(0),
      I5 => \bit_counter_reg__0\(2),
      O => \iduty[1]_i_1_n_0\
    );
\iduty[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888F88888"
    )
        port map (
      I0 => isample(2),
      I1 => \iduty[2]_i_2_n_0\,
      I2 => \iduty[3]_i_3_n_0\,
      I3 => \bit_counter_reg__0\(0),
      I4 => \bit_counter_reg__0\(1),
      I5 => \bit_counter_reg__0\(2),
      O => \iduty[2]_i_1_n_0\
    );
\iduty[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555444444545"
    )
        port map (
      I0 => etx_reset,
      I1 => counter_reg_n_0,
      I2 => \bit_counter_reg__0\(2),
      I3 => \bit_counter_reg__0\(0),
      I4 => \bit_counter_reg__0\(1),
      I5 => \bit_counter_reg__0\(3),
      O => \iduty[2]_i_2_n_0\
    );
\iduty[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08080808FF080808"
    )
        port map (
      I0 => \iduty[3]_i_2_n_0\,
      I1 => isample(3),
      I2 => etx_reset,
      I3 => \iduty[3]_i_3_n_0\,
      I4 => \iduty[7]_i_3_n_0\,
      I5 => \bit_counter_reg__0\(2),
      O => \iduty[3]_i_1_n_0\
    );
\iduty[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAAFEFF"
    )
        port map (
      I0 => counter_reg_n_0,
      I1 => \bit_counter_reg__0\(1),
      I2 => \bit_counter_reg__0\(0),
      I3 => \bit_counter_reg__0\(3),
      I4 => \bit_counter_reg__0\(2),
      O => \iduty[3]_i_2_n_0\
    );
\iduty[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => etx_reset,
      I1 => \bit_counter_reg__0\(3),
      I2 => counter_reg_n_0,
      O => \iduty[3]_i_3_n_0\
    );
\iduty[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AAA30000A8AA"
    )
        port map (
      I0 => isample(4),
      I1 => \iduty[4]_i_2_n_0\,
      I2 => counter_reg_n_0,
      I3 => \bit_counter_reg__0\(3),
      I4 => etx_reset,
      I5 => \bit_counter_reg__0\(2),
      O => \iduty[4]_i_1_n_0\
    );
\iduty[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \bit_counter_reg__0\(0),
      I1 => \bit_counter_reg__0\(1),
      O => \iduty[4]_i_2_n_0\
    );
\iduty[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808FF0808080808"
    )
        port map (
      I0 => \iduty[6]_i_2_n_0\,
      I1 => isample(5),
      I2 => etx_reset,
      I3 => \bit_counter_reg__0\(0),
      I4 => \bit_counter_reg__0\(1),
      I5 => \iduty[7]_i_2_n_0\,
      O => \iduty[5]_i_1_n_0\
    );
\iduty[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808FF0808080808"
    )
        port map (
      I0 => \iduty[6]_i_2_n_0\,
      I1 => isample(6),
      I2 => etx_reset,
      I3 => \bit_counter_reg__0\(1),
      I4 => \bit_counter_reg__0\(0),
      I5 => \iduty[7]_i_2_n_0\,
      O => \iduty[6]_i_1_n_0\
    );
\iduty[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFDDFB"
    )
        port map (
      I0 => \bit_counter_reg__0\(2),
      I1 => \bit_counter_reg__0\(3),
      I2 => \bit_counter_reg__0\(0),
      I3 => \bit_counter_reg__0\(1),
      I4 => counter_reg_n_0,
      O => \iduty[6]_i_2_n_0\
    );
\iduty[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888F888FF88"
    )
        port map (
      I0 => \iduty[7]_i_2_n_0\,
      I1 => \iduty[7]_i_3_n_0\,
      I2 => \iduty[7]_i_4_n_0\,
      I3 => isample(7),
      I4 => \bit_counter_reg__0\(3),
      I5 => etx_reset,
      O => \iduty[7]_i_1_n_0\
    );
\iduty[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => counter_reg_n_0,
      I1 => \bit_counter_reg__0\(3),
      I2 => etx_reset,
      I3 => \bit_counter_reg__0\(2),
      O => \iduty[7]_i_2_n_0\
    );
\iduty[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \bit_counter_reg__0\(0),
      I1 => \bit_counter_reg__0\(1),
      O => \iduty[7]_i_3_n_0\
    );
\iduty[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \bit_counter_reg__0\(2),
      I1 => \bit_counter_reg__0\(0),
      I2 => \bit_counter_reg__0\(1),
      I3 => counter_reg_n_0,
      O => \iduty[7]_i_4_n_0\
    );
\iduty[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00015555"
    )
        port map (
      I0 => counter_reg_n_0,
      I1 => \bit_counter_reg__0\(2),
      I2 => \bit_counter_reg__0\(0),
      I3 => \bit_counter_reg__0\(1),
      I4 => \bit_counter_reg__0\(3),
      I5 => etx_reset,
      O => duty0
    );
\iduty[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000ABAA"
    )
        port map (
      I0 => isample(8),
      I1 => \isample[8]_i_3_n_0\,
      I2 => counter_reg_n_0,
      I3 => \bit_counter_reg__0\(3),
      I4 => etx_reset,
      O => \iduty[8]_i_2_n_0\
    );
\iduty_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => duty0,
      D => \iduty[0]_i_1_n_0\,
      Q => \^q\(0),
      R => '0'
    );
\iduty_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => duty0,
      D => \iduty[1]_i_1_n_0\,
      Q => \^q\(1),
      R => '0'
    );
\iduty_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => duty0,
      D => \iduty[2]_i_1_n_0\,
      Q => \^q\(2),
      R => '0'
    );
\iduty_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => duty0,
      D => \iduty[3]_i_1_n_0\,
      Q => \^q\(3),
      R => '0'
    );
\iduty_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => duty0,
      D => \iduty[4]_i_1_n_0\,
      Q => \^q\(4),
      R => '0'
    );
\iduty_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => duty0,
      D => \iduty[5]_i_1_n_0\,
      Q => \^q\(5),
      R => '0'
    );
\iduty_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => duty0,
      D => \iduty[6]_i_1_n_0\,
      Q => \^q\(6),
      R => '0'
    );
\iduty_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => duty0,
      D => \iduty[7]_i_1_n_0\,
      Q => \^q\(7),
      R => '0'
    );
\iduty_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => duty0,
      D => \iduty[8]_i_2_n_0\,
      Q => \^q\(8),
      R => '0'
    );
\isample[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => flip_state,
      I1 => \bit_counter_reg__0\(2),
      I2 => \bit_counter_reg__0\(0),
      I3 => \bit_counter_reg__0\(1),
      I4 => \isample[3]_i_2_n_0\,
      I5 => isample(1),
      O => \isample[1]_i_1_n_0\
    );
\isample[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => flip_state,
      I1 => \bit_counter_reg__0\(2),
      I2 => \bit_counter_reg__0\(1),
      I3 => \bit_counter_reg__0\(0),
      I4 => \isample[3]_i_2_n_0\,
      I5 => isample(2),
      O => \isample[2]_i_1_n_0\
    );
\isample[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => flip_state,
      I1 => \bit_counter_reg__0\(2),
      I2 => \bit_counter_reg__0\(0),
      I3 => \bit_counter_reg__0\(1),
      I4 => \isample[3]_i_2_n_0\,
      I5 => isample(3),
      O => \isample[3]_i_1_n_0\
    );
\isample[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => enable_read_reg_n_0,
      I1 => counter_reg_n_0,
      I2 => pass_sample_reg_n_0,
      I3 => \bit_counter_reg__0\(3),
      O => \isample[3]_i_2_n_0\
    );
\isample[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => flip_state,
      I1 => \isample[7]_i_2_n_0\,
      I2 => \bit_counter_reg__0\(1),
      I3 => \bit_counter_reg__0\(0),
      I4 => isample(4),
      O => \isample[4]_i_1_n_0\
    );
\isample[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFF0800"
    )
        port map (
      I0 => flip_state,
      I1 => \isample[7]_i_2_n_0\,
      I2 => \bit_counter_reg__0\(1),
      I3 => \bit_counter_reg__0\(0),
      I4 => isample(5),
      O => \isample[5]_i_1_n_0\
    );
\isample[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFF0800"
    )
        port map (
      I0 => flip_state,
      I1 => \isample[7]_i_2_n_0\,
      I2 => \bit_counter_reg__0\(0),
      I3 => \bit_counter_reg__0\(1),
      I4 => isample(6),
      O => \isample[6]_i_1_n_0\
    );
\isample[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => flip_state,
      I1 => \isample[7]_i_2_n_0\,
      I2 => \bit_counter_reg__0\(1),
      I3 => \bit_counter_reg__0\(0),
      I4 => isample(7),
      O => \isample[7]_i_1_n_0\
    );
\isample[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \bit_counter_reg__0\(3),
      I1 => pass_sample_reg_n_0,
      I2 => counter_reg_n_0,
      I3 => enable_read_reg_n_0,
      I4 => \bit_counter_reg__0\(2),
      O => \isample[7]_i_2_n_0\
    );
\isample[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00010000"
    )
        port map (
      I0 => \bit_counter_reg__0\(2),
      I1 => \bit_counter_reg__0\(0),
      I2 => \bit_counter_reg__0\(1),
      I3 => counter_reg_n_0,
      I4 => \bit_counter_reg__0\(3),
      I5 => etx_reset,
      O => \isample[8]_i_1_n_0\
    );
\isample[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => flip_state,
      I1 => \bit_counter_reg__0\(3),
      I2 => enable_read_reg_n_0,
      I3 => pass_sample_reg_n_0,
      I4 => \isample[8]_i_3_n_0\,
      I5 => isample(8),
      O => \isample[8]_i_2_n_0\
    );
\isample[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \bit_counter_reg__0\(1),
      I1 => \bit_counter_reg__0\(0),
      I2 => \bit_counter_reg__0\(2),
      O => \isample[8]_i_3_n_0\
    );
\isample_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \isample[1]_i_1_n_0\,
      Q => isample(1),
      R => \isample[8]_i_1_n_0\
    );
\isample_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \isample[2]_i_1_n_0\,
      Q => isample(2),
      R => \isample[8]_i_1_n_0\
    );
\isample_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \isample[3]_i_1_n_0\,
      Q => isample(3),
      R => \isample[8]_i_1_n_0\
    );
\isample_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \isample[4]_i_1_n_0\,
      Q => isample(4),
      R => \isample[8]_i_1_n_0\
    );
\isample_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \isample[5]_i_1_n_0\,
      Q => isample(5),
      R => \isample[8]_i_1_n_0\
    );
\isample_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \isample[6]_i_1_n_0\,
      Q => isample(6),
      R => \isample[8]_i_1_n_0\
    );
\isample_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \isample[7]_i_1_n_0\,
      Q => isample(7),
      R => \isample[8]_i_1_n_0\
    );
\isample_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \isample[8]_i_2_n_0\,
      Q => isample(8),
      R => \isample[8]_i_1_n_0\
    );
pass_sample_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000027770008"
    )
        port map (
      I0 => counter_reg_n_0,
      I1 => enable_read_reg_n_0,
      I2 => \bit_counter_reg__0\(3),
      I3 => \isample[8]_i_3_n_0\,
      I4 => pass_sample_reg_n_0,
      I5 => etx_reset,
      O => pass_sample_i_1_n_0
    );
pass_sample_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pass_sample_i_1_n_0,
      Q => pass_sample_reg_n_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_level_SAR is
  port (
    output_pwm : out STD_LOGIC;
    etx_reset : in STD_LOGIC;
    flip_state : in STD_LOGIC;
    clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_level_SAR;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_level_SAR is
  signal counter : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal duty : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal the_SAR_n_0 : STD_LOGIC;
  signal the_SAR_n_1 : STD_LOGIC;
  signal the_SAR_n_13 : STD_LOGIC;
  signal the_SAR_n_2 : STD_LOGIC;
  signal the_SAR_n_3 : STD_LOGIC;
begin
the_PWM_generator: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PWM_generator
     port map (
      DI(3) => the_SAR_n_0,
      DI(2) => the_SAR_n_1,
      DI(1) => the_SAR_n_2,
      DI(0) => the_SAR_n_3,
      Q(8 downto 0) => counter(8 downto 0),
      clk => clk,
      \iduty_reg[8]\(0) => the_SAR_n_13,
      \iduty_reg[8]_0\(8 downto 0) => duty(8 downto 0),
      output_pwm => output_pwm
    );
the_SAR: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SAR
     port map (
      DI(3) => the_SAR_n_0,
      DI(2) => the_SAR_n_1,
      DI(1) => the_SAR_n_2,
      DI(0) => the_SAR_n_3,
      Q(8 downto 0) => duty(8 downto 0),
      clk => clk,
      \counter_reg[8]\(8 downto 0) => counter(8 downto 0),
      etx_reset => etx_reset,
      flip_state => flip_state,
      output_pwm(0) => the_SAR_n_13
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    etx_reset : in STD_LOGIC;
    flip_state : in STD_LOGIC;
    output_pwm : out STD_LOGIC;
    average : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "microSense_top_level_top_level_SAR_0_0,top_level_SAR,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "top_level_SAR,Vivado 2017.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN microSense_top_level_sys_clock";
  attribute x_interface_info of etx_reset : signal is "xilinx.com:signal:reset:1.0 etx_reset RST";
  attribute x_interface_parameter of etx_reset : signal is "XIL_INTERFACENAME etx_reset, POLARITY ACTIVE_LOW";
begin
  average(0) <= 'Z';
  average(1) <= 'Z';
  average(2) <= 'Z';
  average(3) <= 'Z';
  average(4) <= 'Z';
  average(5) <= 'Z';
  average(6) <= 'Z';
  average(7) <= 'Z';
  average(8) <= 'Z';
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_level_SAR
     port map (
      clk => clk,
      etx_reset => etx_reset,
      flip_state => flip_state,
      output_pwm => output_pwm
    );
end STRUCTURE;
