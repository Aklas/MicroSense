
--Moustafa Youssef. SAR method for an 9-bit vector with a first order RC circuit
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity SAR is
    Port ( clock : in STD_LOGIC;
           enable: in STD_LOGIC; -- an enable
           reset : in STD_LOGIC;
           SAR_input : in STD_LOGIC; -- from LM741
           sample : out STD_LOGIC_VECTOR (8 downto 0); --the distance to be calculated every 45RC sec's
           duty : out STD_LOGIC_VECTOR (8 downto 0)); --duty to be sent to PWM generator every 5RC sec's
end SAR;

architecture Behavioral of SAR is

signal bit_counter,counter: integer range 0 to 15;
 
signal iduty, isample: std_logic_vector (8 downto 0);
signal enable_read, pass_sample: std_logic;
constant zero_vector: std_logic_vector(7 downto 0):=(others => '0'); 
begin
duty<=iduty;

process(clock) begin
    if(rising_edge(clock))then
        if(reset='1') then 
              bit_counter<=8; 
              counter<=0; 
              iduty<= (others=>'0');
              isample <= (others=>'0');  
              enable_read <='0'; 
              pass_sample<='0';
          --when counter is 0 we start sending a signal
          elsif(counter=0 and bit_counter=0) then 
              iduty <= isample(8 downto 1) & '1';
              enable_read<='0'; 
          elsif(counter=0 and bit_counter=8) then 
                 iduty <= '1' & zero_vector(7 downto 0); -- generate 50.10% pu 
                 isample <= (others=>'0'); --start over
                 enable_read<='0'; --not ready to read yet
          elsif(counter=0 and bit_counter=7) then 
                  iduty <= isample(8) & '1' & zero_vector(6 downto 0); --1 + 1 + 7
                  enable_read<='0';                            
          elsif(counter=0 and bit_counter=6) then 
                  iduty <= isample(8 downto 7) & '1' & zero_vector(5 downto 0); --2 + 1 + 6
                  enable_read<='0';                            
          elsif(counter=0 and bit_counter=5) then 
                 iduty <= isample(8 downto 6) & '1' & zero_vector(4 downto 0); --3 + 1 + 5
                 enable_read<='0';                             
          elsif(counter=0 and bit_counter=4) then 
                   iduty <= isample(8 downto 5) & '1' & zero_vector(3 downto 0); --4 + 1 + 4
                   enable_read<='0';                     
          elsif(counter=0 and bit_counter=3) then 
                 iduty <= isample(8 downto 4) & '1' & zero_vector(2 downto 0); --5 + 1 + 3
                 enable_read<='0';  
          elsif(counter=0 and bit_counter=2) then 
                  iduty <= isample(8 downto 3) & '1' & zero_vector(1 downto 0); --6 + 1 + 2
                  enable_read<='0';  
          elsif(counter=0 and bit_counter=1) then 
               iduty <= isample(8 downto 2) & '1' & '0'; --7 + 1 + 1
               enable_read<='0';                            
          elsif(counter=0 and bit_counter=0) then 
              iduty <= isample(8 downto 1) & '1'; --8 + 1
              enable_read<='0';        
          --when counter reaches the suitable time for the bit we 
          --can start to read
          elsif(bit_counter=8 and counter=1 and enable_read='0') then 
              enable_read<='1'; --enable reading
          elsif(bit_counter=7 and counter=2 and enable_read='0') then 
              enable_read<='1'; 
          elsif(bit_counter=6 and counter=3 and enable_read='0') then 
              enable_read<='1'; 
          elsif(bit_counter=5 and counter=3 and enable_read='0') then 
              enable_read<='1'; 
          elsif(bit_counter=4 and counter=4 and enable_read='0') then 
              enable_read<='1'; 
          elsif(bit_counter=3 and counter=5 and enable_read='0') then 
               enable_read<='1';         
           elsif(bit_counter=2 and counter=5 and enable_read='0') then 
               enable_read<='1';
           elsif(bit_counter=1 and counter=6 and enable_read='0') then 
               enable_read<='1';
           elsif(bit_counter=0 and counter=7 and enable_read='0') then 
               enable_read<='1';                                   
          elsif(pass_sample ='1') then --store sample in FF
                counter<=0; bit_counter<=8;  
                sample<=isample; --D to Q
                pass_sample <='0'; --stop passing
          elsif(enable_read='1' and bit_counter=0) then
                pass_sample <= '1'; --read the sample
                enable_read<='0';
                if(SAR_input='1')then isample(bit_counter)<='1';
                    else isample(bit_counter)<='0'; 
                end if;
          elsif(enable_read='1') then 
                counter<=0; 
                enable_read<='0'; 
                bit_counter<=bit_counter-1; 
                if(SAR_input='1')then isample(bit_counter)<='1'; 
                    else isample(bit_counter)<='0'; 
                end if;
            end if;
            if(enable='1') 
                then counter<=counter+1; 
            end if;
    end if;
end process;


end Behavioral;
