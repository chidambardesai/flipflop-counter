# Synchronous 4-Bit Counter using D Flip-Flops

## Project Overview

This project implements a 4-Bit Synchronous Counter using D Flip-Flops in Verilog HDL.

The counter increments sequentially on every positive edge of the clock signal.
Reset functionality is also implemented and verified through simulation.

---

## Features

* D Flip-Flop Design
* Synchronous Counter Architecture
* Clock-Driven Sequential Logic
* Reset Control
* Verilog HDL Implementation
* Waveform Verification

---

## Tools Used

| Tool           | Purpose                  |
| -------------- | ------------------------ |
| Verilog HDL    | Hardware Design          |
| Icarus Verilog | Compilation & Simulation |
| EPWave         | Waveform Visualization   |
| Git & GitHub   | Version Control          |

---

## Project Structure

```text id="jlwm6w"
flipflop-counter/
│
├── src/
│   └── counter_design.v
│
├── testbench/
│   ├── counter_design_tb.v
│   ├── counter_design.out
│   └── counter_design.vcd
│
├── screenshots/
│   └── counter_waveform.png
│
├── waveforms/
│
└── README.md
```

---

## Simulation Results

The counter successfully increments on each clock pulse.

Observed sequence:

```text id="0jlwm2"
0 → 1 → 2 → 3 → 4 → 5 → 6 → 7 → 8 → 9 → A
```

Waveform verification confirms proper synchronous operation.

---

## Author

**Chidambar Desai**
