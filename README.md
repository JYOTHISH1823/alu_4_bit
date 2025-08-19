4-bit ALU in Verilog - README
A simple 4-bit Arithmetic Logic Unit (ALU) implemented in Verilog with a testbench and simulation using Icarus Verilog + GTKWave.

This project is beginner-friendly and demonstrates how to design, simulate, and verify a digital circuit using Verilog.
📂 Project Structure

alu-4bit/
│── src/              # Verilog source files
│   └── alu.v
│
│── tb/               # Testbenches
│   └── alu_tb.v
│
│── sim/              # Simulation outputs (compiled files, waveforms)
│   ├── alu.vcd
│   └── alu_tb.out
│
│── scripts/          # Run scripts
│   └── run_icarus.sh
│
│── docs/             # Diagrams, notes, screenshots
│── .gitignore
│── README.md

 Features
The ALU supports the following 8 operations controlled by a 3-bit `op` signal:

Operation	Code (op)	Description
ADD	000	a + b (with carry)
SUB	001	a - b (with borrow)
AND	010	Bitwise AND
OR	011	Bitwise OR
XOR	100	Bitwise XOR
NOT	101	Bitwise Invert (on a)
SHL	110	Shift Left
SHR	111	Shift Right
▶ How to Run
1. Install tools: Icarus Verilog + GTKWave
   - On Ubuntu/Debian:
     sudo apt update
     sudo apt install iverilog gtkwave
2. Run simulation:
     ./scripts/run_icarus.sh
3. View waveform: GTKWave will open automatically.
For Visual Studio Code,
1. Open the project folder (`alu-4bit/`) in **VS Code**.  
2. Make sure you have installed:  
   - [Icarus Verilog](https://bleyer.org/icarus/) → add to PATH during install  
   - [GTKWave](https://sourceforge.net/projects/gtkwave/) → add `bin` folder to PATH  

3. Open the **VS Code Terminal**:  
   - Shortcut: <kbd>Ctrl</kbd> + <kbd>`</kbd> (backtick)  
   - Or: Menu → **Terminal → New Terminal**

---

### 🔹 Run on Windows (VS Code Terminal)
1. Navigate to your project root (if not already there):  
   ```powershell
   cd alu-4bit
2. Run the batch script: scripts\run_icarus.bat
  This will:
   Compile the ALU (iverilog)
   Run the testbench (vvp)
   Open GTKWave with the waveform (sim/alu.vcd)
Sample Output
Console output (from $display in testbench):


Testing ADD:  0101 + 0011 = 1000
Testing SUB:  1000 - 0100 = 0100
Testing AND:  1100 & 1010 = 1000
Testing OR :  1100 | 1010 = 1110
...

Waveform example (GTKWave): 
Tech Used
- Language: Verilog HDL
- Simulator: Icarus Verilog (iverilog + vvp)
- Waveform Viewer: GTKWave
- Editor: VS Code
 Learning Outcomes
- Designing a combinational logic circuit in Verilog.
- Writing a testbench for verification.
- Using Icarus Verilog for compilation & simulation.
- Viewing waveforms in GTKWave.
- Structuring a hardware project for GitHub.
