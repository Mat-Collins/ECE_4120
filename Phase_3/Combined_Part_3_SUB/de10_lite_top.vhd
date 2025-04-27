-- de10_lite_top.vhd
-- Top-level entity for DE10-Lite board integration
-- Date: 4/11/2025
-- Authors: Matthew Collins & Lewis Bates
-- Emails: mcollins42@tntech.edu & lfbates42@tntech.edu

library IEEE;
use IEEE.std_logic_1164.all;

entity de10_lite_top is
    port (
        CLOCK_50 : in  std_logic;
        KEY      : in  std_logic_vector(1 downto 0);
        SW       : in  std_logic_vector(9 downto 0);
        HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 : out std_logic_vector(6 downto 0);
        LEDR     : out std_logic_vector(9 downto 0)
    );
end de10_lite_top;

architecture Behavioral of de10_lite_top is
    -- Corrected Component Declaration for Phase_2
    component Phase_2 is
        port (
            clock          : in  std_logic;
            reset          : in  std_logic;
            instr_wren     : in  std_logic;
            instr_input    : in  std_logic_vector(31 downto 0);
            regwrite       : in  std_logic;
            alu_src        : in  std_logic;
            alu_op         : in  std_logic_vector(3 downto 0);
            reg_data_1     : out std_logic_vector(31 downto 0);
            reg_data_2     : out std_logic_vector(31 downto 0);
            read_reg_1     : out std_logic_vector(4 downto 0);
            read_reg_2     : out std_logic_vector(4 downto 0);
            write_reg      : out std_logic_vector(4 downto 0);
            alu_out        : out std_logic_vector(31 downto 0);
            alu_zero       : out std_logic;
            instr_mem_out  : out std_logic_vector(31 downto 0)
        );
    end component;

    -- Signals
    signal clk          : std_logic;
    signal reset_n      : std_logic;
    signal regwrite     : std_logic;
    signal alu_src      : std_logic;
    signal alu_op       : std_logic_vector(3 downto 0);
    signal reg_data_1   : std_logic_vector(31 downto 0);
    signal reg_data_2   : std_logic_vector(31 downto 0);
    signal alu_result   : std_logic_vector(31 downto 0);
    signal zero_flag    : std_logic;

    -- 7-Segment Decoder Function
    function hex_to_7seg (hex : std_logic_vector(3 downto 0)) return std_logic_vector is
    begin
        case hex is
            when "0000" => return "1000000"; -- 0
            when "0001" => return "1111001"; -- 1
            when "0010" => return "0100100"; -- 2
            when "0011" => return "0110000"; -- 3
            when "0100" => return "0011001"; -- 4
            when "0101" => return "0010010"; -- 5
            when "0110" => return "0000010"; -- 6
            when "0111" => return "1111000"; -- 7
            when "1000" => return "0000000"; -- 8
            when "1001" => return "0010000"; -- 9
            when "1010" => return "0001000"; -- A
            when "1011" => return "0000011"; -- b
            when "1100" => return "1000110"; -- C
            when "1101" => return "0100001"; -- d
            when "1110" => return "0000110"; -- E
            when "1111" => return "0001110"; -- F
            when others => return "1111111"; -- Default (all off)
        end case;
    end function;

begin
    -- Clock and Reset
    clk <= CLOCK_50;
    reset_n <= KEY(0); -- Active low reset

    -- Control Signals from Switches
    regwrite <= SW(9);          -- SW(9) enables register write
    alu_src  <= SW(8);          -- SW(8) selects ALU source
    alu_op   <= SW(7 downto 4); -- SW(7 downto 4) selects ALU operation

    -- Instantiate Phase_2
    dut: Phase_2
        port map (
            clock          => clk,
            reset          => reset_n,
            instr_wren     => '0',
            instr_input    => (others => '0'),
            regwrite       => regwrite,
            alu_src        => alu_src,
            alu_op         => alu_op,
            reg_data_1     => reg_data_1,
            reg_data_2     => reg_data_2,
            read_reg_1     => open,
            read_reg_2     => open,
            write_reg      => open,
            alu_out        => alu_result,
            alu_zero       => zero_flag,
            instr_mem_out  => open
        );

    -- 7-Segment Display Mapping
    HEX0 <= hex_to_7seg(reg_data_1(3 downto 0));
    HEX1 <= hex_to_7seg(reg_data_1(7 downto 4));
    HEX2 <= hex_to_7seg(reg_data_2(3 downto 0));
    HEX3 <= hex_to_7seg(reg_data_2(7 downto 4));
    HEX4 <= hex_to_7seg(alu_result(3 downto 0));
    HEX5 <= hex_to_7seg(alu_result(7 downto 4));

    -- LEDs for Debugging
    LEDR <= SW; -- Mirror switches to LEDs

end Behavioral;