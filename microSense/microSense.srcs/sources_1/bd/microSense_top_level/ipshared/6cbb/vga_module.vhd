library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity vga_module is
    generic (
        pseudo_width:       integer:= (640/8);		-- number of pseudo pixels (real numer of pixels in x / (2^pow_two_Pixel_size)) (80)
        pseudo_height:      integer:= (480/8);		-- number of pseudo pixels (real numer of pixels in y / (2^pow_two_Pixel_size)) (60)
        pow_two_Pixel_size: integer:= 3;			-- number of reals pixels per 2^pow_two_Pixel_size
        addr_size:			integer:=20
    );
    Port (
		clk :	in  STD_LOGIC;
		addr:	in std_logic_vector((addr_size - 1) downto 0);
		pixel:	in std_logic_vector(11 downto 0);
		we:		in std_logic;
		red:	out STD_LOGIC_VECTOR(3 downto 0);
		green:	out STD_LOGIC_VECTOR(3 downto 0);
		blue:	out STD_LOGIC_VECTOR(3 downto 0);
		hsync:	out STD_LOGIC;
		vsync:	out STD_LOGIC
	);
end vga_module;
-- 640 x
-- 480 y
architecture Behavioral of vga_module is

component sync_signals_generator is
	Port (
		pixel_clk : in  STD_LOGIC;
		reset : in  STD_LOGIC;
		hor_sync: out STD_LOGIC;
		ver_sync: out STD_LOGIC;
		blank: out STD_LOGIC;
		scan_line_x: out STD_LOGIC_VECTOR(10 downto 0);
		scan_line_y: out STD_LOGIC_VECTOR(10 downto 0)
	);
end component;

component clock_divider is
	Port (
		clk : in  STD_LOGIC;
		reset : in  STD_LOGIC;
		enable: in STD_LOGIC;
		kHz: out STD_LOGIC;
		seconds_port: out STD_LOGIC_VECTOR(4-1 downto 0);     -- unused
		ten_seconds_port: out STD_LOGIC_VECTOR(3-1 downto 0); -- unused
		minutes_port: out STD_LOGIC_VECTOR(4-1 downto 0);     -- unused
		ten_minutes_port: out STD_LOGIC_VECTOR(3-1 downto 0); -- unused
		twentyfive_MHz: out STD_LOGIC;
		hHz: out STD_LOGIC
	);
end component;

component ram is
	generic (
		word_num  :	integer:= ((pseudo_width*pseudo_height) - 1);			-- number of words to allocate into memory
		word_size :	integer:= 12;						-- number of bits per word
		addr_size : integer:= 20						-- number of bits used to address word ((2^addr_size) >= word_num)
	);
	port (
		clk : in std_logic;								-- clk
		we 	: in std_logic;								-- write enable
		a_w	: in std_logic_vector((addr_size - 1) downto 0);	-- address write
		di 	: in std_logic_vector(11 downto 0);			-- data in
		a_r	: in std_logic_vector((addr_size - 1) downto 0);	-- address read
		do 	: out std_logic_vector(11 downto 0)			-- data out
	);
end component ram;

-- Signals:
signal reset: std_logic;

-- Clock divider signals:
signal i_pixel_clk: std_logic;

-- Sync module signals:
signal vga_blank : std_logic;
signal scan_line_x, scan_line_y: STD_LOGIC_VECTOR(10 downto 0);

signal pixel_color: std_logic_vector(1 to 12);
signal pseudo_scan_line_x: STD_LOGIC_VECTOR(10 downto 0);
signal pseudo_scan_line_y: STD_LOGIC_VECTOR(10 downto 0);
signal readIndex: STD_LOGIC_VECTOR((addr_size - 1) downto 0);
constant shiftBit : std_logic_vector(pow_two_Pixel_size downto 1) := (others => '0');    -- srl/sll only supported in VHDL 2008 and higher

begin

    FRAMEBUFFER: ram
    generic map (
        word_num  => (pseudo_width*pseudo_height - 1),		-- number of words in memory
        word_size => 12,									-- each word is 12 bits (4 red bits, 4 green bits, 4 blue bits)
        addr_size => addr_size
    )
    port map (
        clk => clk,                         -- clk
        we  => we,                         	-- write enable
        a_w => addr,             			-- address to write data (di)
        di  => pixel,              			-- data input (di)  (12 bit rgb value to write into memory)
        a_r => readIndex,                   -- address to read data (indexes the correct memory location)
        do  => pixel_color                  -- data output (do) (12 bit rgb value to read from memory)
    );

	VGA_SYNC: sync_signals_generator
    Port map (
		pixel_clk   => i_pixel_clk,
		reset       => reset,
		hor_sync    => hsync,
		ver_sync    => vsync,
		blank       => vga_blank,
		scan_line_x => scan_line_x,
		scan_line_y => scan_line_y
    );
	
	DIVIDER: clock_divider
    Port map (  
		clk              => clk,
		reset            => reset,
		kHz              => open,
		twentyfive_MHz   => i_pixel_clk,
		enable           => '1',
		seconds_port     => open,
		ten_seconds_port => open,
		minutes_port     => open,
		ten_minutes_port => open,
		hHz              => open
	);

    -- Convert scan_line_x/y (Associated with real pixels) -->  pseudo_scan_line_x/y (Associated with pseudo pixels)
    pseudo_scan_line_x <= shiftBit & scan_line_x(10 downto pow_two_Pixel_size);
    pseudo_scan_line_y <= shiftBit & scan_line_y(10 downto pow_two_Pixel_size);

    -- Compute the correct index and finding corresponding element in FRAMEBUFFER
    readIndex <= std_logic_vector(
                    to_unsigned(
                        (to_integer(unsigned(pseudo_scan_line_y)) * pseudo_width ) + to_integer(unsigned(pseudo_scan_line_x)),
                        (addr_size)
                    )
                );

	-- BLANKING:
	-- Follow this syntax to assign other colors when they are not being blanked
	-- Output the pixel (pixel_color) read from memory (FRAMEBUFFER)
	red			<= "0000" when (vga_blank = '1') else pixel_color(1 to 4);
	green		<= "0000" when (vga_blank = '1') else pixel_color(5 to 8);
	blue		<= "0000" when (vga_blank = '1') else pixel_color(9 to 12);

end Behavioral;
