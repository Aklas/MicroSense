library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_level_SAR is
    Port (
       clk : in STD_LOGIC;
       ext_reset : in STD_LOGIC;
       SAR_input : in STD_LOGIC; -- high or low from comparator
       SAR_output: out STD_LOGIC; -- PWM output to low pass filter
       distance_mm : out STD_LOGIC_VECTOR (8 downto 0)
      -- average: out STD_LOGIC_VECTOR (8 downto 0) -- voltage output of SAR
        --output from LUT
  --     distance_in : out STD_LOGIC_VECTOR (8 downto 0)); --output from LUT
  );
end top_level_SAR;

architecture Behavioral of top_level_SAR is

signal iPWM, enable: std_logic;
signal duty, average, sample: std_logic_vector(8 downto 0);

component SAR is
    Port ( clock : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           duty: out STD_LOGIC_VECTOR(8 downto 0);
           enable : in  STD_LOGIC;
           SAR_input : in  STD_LOGIC;
           sample: out STD_LOGIC_VECTOR(8 downto 0));
end component;

component Averager is
    Port ( clock : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           enable : in  STD_LOGIC;
           average: out STD_LOGIC_VECTOR(8 downto 0);
           sample: in STD_LOGIC_VECTOR(8 downto 0));
end component;

component ROM_mm is
	port(
		addr: in std_logic_vector( 8 downto 0);
		data: out std_logic_vector(8 downto 0)
		);
end component;
		
component downcounter_fixed is
	Generic ( period: integer:= 4;
            WIDTH: integer:= 3);
    Port ( clock : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           enable : in  STD_LOGIC;
           zero : out  STD_LOGIC;
           value: out STD_LOGIC_VECTOR(WIDTH-1 downto 0));
end component;

component PWM_generator is 
        Port ( reset: in STD_LOGIC;
       clock: in STD_LOGIC;
       duty: in std_logic_vector(8 downto 0); --9 bit vector
       PWM: out STD_LOGIC
      );
end component;

begin
--average<=i_average;
the_SAR: SAR
    Port Map(reset => ext_reset,
         clock => clk,
         duty => duty, 
         enable => enable,
         SAR_input => SAR_input,
         sample => sample
          );

the_Averager: Averager
    Port Map(reset => '0',
         clock => clk, 
         enable => enable,
         average => average,
         sample => sample
          );                 

the_PWM_generator: PWM_generator
    Port Map(reset => ext_reset,
             clock => clk,
             duty => duty, 
             PWM => SAR_output
              );             
              
the_RC_clock: downcounter_fixed
generic map(
              period => (100000-1), --100e6/0.9e3=100e3
              WIDTH => 17         --appropiate width for number
          )
port map (
              clock => clk,
              reset => ext_reset,
              enable => '1',
              zero => enable,
              value => open         
);

the_ROM_mm:ROM_mm
   port map(
   addr => average,
   data =>distance_mm
    );

end Behavioral;