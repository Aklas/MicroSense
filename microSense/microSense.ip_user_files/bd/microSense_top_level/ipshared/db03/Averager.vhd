library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Averager is
    Port ( clock : in STD_LOGIC;
           reset : in STD_LOGIC;
           enable : in STD_LOGIC; -- RC clock
           sample: in STD_LOGIC_VECTOR (8 downto 0);
           average : out STD_LOGIC_VECTOR (8 downto 0));
end Averager;

architecture Behavioral of Averager is
signal total, itotal: std_logic_vector(12 downto 0);
signal i_sample,i_average: std_logic_vector(8 downto 0);
signal counter: integer range 0 to 63;
signal sample_counter: integer range 0 to 15; --convert to std_logic_vector to avoid if (counter=64)
--64 tims 45 -1 
begin
--average<=total(12 downto 4); --please see p6 for exp.

process(clock) begin
    if(rising_edge(clock)) then
        i_sample <= sample;
        average <= total(12 downto 4);
        i_average <= total(12 downto 4);
        if(reset='1') then 
               itotal <=(others=>'0'); total <=(others=>'0'); counter <=0; --change to others = 0
        elsif(enable='1' and counter =35 and sample_counter = 15) then 
        --time to take an average
                counter <= 0;
                sample_counter <= 0;
                total <= itotal; --D to Q
                itotal <= "0000" & sample ; --first total is the freshest sample
        elsif(enable='1' and counter =35) then 
         --time to add another sample
                counter <= 0;
                sample_counter <= sample_counter +1; 
                itotal <= itotal + i_sample; 
        elsif (enable ='1') then counter <= counter + 1;
        end if;       
    end if;
end process;

--process(clock) begin
--        --variable TMP : std_logic := '0';
--    if(rising_edge(clock)) then
--        -- eable portion
--        if(enable = '1') then
--            -- count number enables seen
--            -- if enable is 15 reset to zero
--        end if;
        
        
--    end if;
--end process;

end Behavioral;