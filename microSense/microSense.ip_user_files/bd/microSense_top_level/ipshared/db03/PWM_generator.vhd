library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity PWM_generator is 
    Port ( reset: in STD_LOGIC;
           clock: in STD_LOGIC;
           duty: in std_logic_vector(8 downto 0); --9 bit vector
           PWM: out STD_LOGIC
          );
end PWM_generator;

architecture Behavioral of PWM_generator is
signal counter, iduty: integer range 0 to 511;
--signal counter, iduty: std_logic_vector(8 downto 0);

begin
iduty <= to_integer(unsigned(duty));
    process(clock) begin
        if (rising_edge(clock)) then 
            if(counter=399) then counter <= 0; else counter <= counter + 1;  end if;
        end if;
    end process;

PWM <= '1' when counter<iduty else '0';
end Behavioral;
