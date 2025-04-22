Copy
This README explains how to test the Phase 2 project on the DE10-Lite board, including switch assignments, reset button usage, and display configuration, as required for ECE 4120/5120 (Spring 2025).

### Testing Instructions:
- **Switches SW0 to SW2**: Used to select one of six MIPS instructions to execute. The 3-bit combination (SW2 is MSB, SW0 is LSB) corresponds to the following instructions:
  - **000**: `add $t3, $t0, $t1` - Adds values in $t0 and $t1, storing the result in $t3.
  - **001**: `sub $t4, $s0, $s1` - Subtracts $s1 from $s0, storing the result in $t4.
  - **010**: `and $t5, $t3, $t4` - Performs bitwise AND on $t3 and $t4, storing the result in $t5.
  - **011**: `xor $t0, $s3, $s4` - Performs bitwise XOR on $s3 and $s4, storing the result in $t0.
  - **100**: `nor $t0, $t0, $t0` - Implements NOT by performing NOR on $t0 with itself, storing the result in $t0.
  - **101**: `addi $s3, $s3, 4` - Adds 4 to $s3, storing the result in $s3.

- **KEY0**: Reset button. Pressing KEY0 initializes the registers to predefined values (e.g., $t0 = 10, $t1 = 20, $s0 = 30, $s1 = 40, $s3 = 50, $s4 = 60, all ≤ FF hex or 255 decimal) to ensure predictable operation.

- **Seven-Segment Displays (HEX0 to HEX5)**: Display the hex values of the three registers involved in the selected instruction. Each register value (constrained to ≤ FF hex or 255 decimal) is shown on two displays:
  - **HEX0 and HEX1**: First source register (e.g., $t0 for `add`, $s3 for `addi`).
  - **HEX2 and HEX3**: Second source register (e.g., $t1 for `add`; for `addi`, displays the same register or a zeroed value since there’s no second register).
  - **HEX4 and HEX5**: Destination register (e.g., $t3 for `add`, $s3 for `addi`).
  - Note: HEX0, HEX2, and HEX4 show the lower 4 bits; HEX1, HEX3, and HEX5 show the upper 4 bits of each 8-bit value.

### Design Choices:
- **Switch Selection (SW0-SW2)**: Three switches provide 8 possible combinations, sufficient to select the 6 required instructions. This minimizes resource usage while meeting the requirement to “use a switch to select your instruction.”
- **Reset Button (KEY0)**: Assigned to KEY0 as it’s a standard input for reset on the DE10-Lite, ensuring registers are initialized before instruction execution.
- **Display Mapping**: The six seven-segment displays are paired to show three 8-bit register values (≤ FF hex), aligning with the project constraint to display “all the three registers in the chosen instruction.” For instructions like `addi` with only two registers (source and destination), the second source display adapts accordingly.
- **Value Constraint**: Register values are kept ≤ 255 to fit within two hex digits, ensuring compliance with the requirement that “none of your registers are holding value greater than FF hex.”