LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY control_unit IS
    PORT (
        opcode   : IN  STD_LOGIC_VECTOR(5 DOWNTO 0);
        RegDst   : OUT STD_LOGIC;
        Branch   : OUT STD_LOGIC;
        RegWrite : OUT STD_LOGIC;
        ALUSrc   : OUT STD_LOGIC;
        MemRead  : OUT STD_LOGIC;
        MemWrite : OUT STD_LOGIC;
        MemtoReg : OUT STD_LOGIC;
        ALUOp    : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
    );
END control_unit;

ARCHITECTURE behavioral OF control_unit IS
BEGIN
    PROCESS(opcode)
    BEGIN
        CASE opcode IS
            WHEN "000000" =>  -- R-type (e.g., add, or)
                RegDst   <= '1';
                ALUSrc   <= '0';
                MemtoReg <= '0';
                RegWrite <= '1';
                MemRead  <= '0';
                MemWrite <= '0';
                Branch   <= '0';
                ALUOp    <= "10";
            WHEN "100011" =>  -- lw
                RegDst   <= '0';
                ALUSrc   <= '1';
                MemtoReg <= '1';
                RegWrite <= '1';
                MemRead  <= '1';
                MemWrite <= '0';
                Branch   <= '0';
                ALUOp    <= "00";
            WHEN "101011" =>  -- sw
                RegDst   <= '0';  -- Don't care, set to 0
                ALUSrc   <= '1';
                MemtoReg <= '0';  -- Don't care, set to 0
                RegWrite <= '0';
                MemRead  <= '0';
                MemWrite <= '1';
                Branch   <= '0';
                ALUOp    <= "00";
            WHEN "000100" =>  -- beq
                RegDst   <= '0';  -- Don't care, set to 0
                ALUSrc   <= '0';
                MemtoReg <= '0';  -- Don't care, set to 0
                RegWrite <= '0';
                MemRead  <= '0';
                MemWrite <= '0';
                Branch   <= '1';
                ALUOp    <= "01";
            WHEN "001000" =>  -- addi
                RegDst   <= '0';
                ALUSrc   <= '1';
                MemtoReg <= '0';
                RegWrite <= '1';
                MemRead  <= '0';
                MemWrite <= '0';
                Branch   <= '0';
                ALUOp    <= "00";
            WHEN OTHERS =>
                RegDst   <= '0';
                ALUSrc   <= '0';
                MemtoReg <= '0';
                RegWrite <= '0';
                MemRead  <= '0';
                MemWrite <= '0';
                Branch   <= '0';
                ALUOp    <= "00";
        END CASE;
    END PROCESS;
END behavioral;