This project implements a parameterized N-bit binary adder in Verilog using a chain of full adders. The adder sums two N-bit inputs and produces an (N+1)-bit sum output, including carry out.

Features:
Parameterizable bit-width (N), default is 16 bits.
Structural Verilog using generate-for loop to instantiate full adders.

Inputs: two N-bit vectors A and B.
Outputs: (N+1)-bit sum vector S.

Ripple carry chain implemented through carry signals between adders.

Design Details:
Uses a wire vector c to hold carry bits between full adders.
Instantiates full adders in a generate block with special handling for least significant bit (carry-in=0) and the most significant bit producing final carry out.
Relies on an external full adder module fa that takes two bits and carry-in, outputs carry-out and sum.

Usage:
Customize the bit-width by specifying parameter N when instantiating the module.
Make sure to provide or implement the fa full adder module in your environment.






<img width="749" height="639" alt="image" src="https://github.com/user-attachments/assets/67bda05b-fceb-40d1-9cd2-689da570da57" />
