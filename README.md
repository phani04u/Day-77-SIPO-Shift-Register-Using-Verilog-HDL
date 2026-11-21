# Day 77 – SIPO Shift Register using Verilog HDL

## 1. Introduction

SIPO stands for **Serial-In Parallel-Out**. It is a type of shift register that accepts data serially (one bit at a time) and provides the output in parallel (multiple bits simultaneously).

In this project, I implemented a 4-bit SIPO Shift Register using Verilog HDL.

## 2. Objectives

- Understand the working principle of SIPO.
- Learn serial-to-parallel data conversion.
- Understand data shifting through flip-flops.
- Implement SIPO using Verilog HDL.
- Verify the design using a testbench.

## 3. Working Principle

- Serial data is applied to the input.
- On every positive clock edge, data shifts by one position.
- Each flip-flop stores one bit.
- The outputs of all flip-flops are available simultaneously.

## 4. Block Diagram

```text
Serial Input
     |
     v
  +-----+    +-----+    +-----+    +-----+
  | FF0 |--->| FF1 |--->| FF2 |--->| FF3 |
  +-----+    +-----+    +-----+    +-----+
     |          |          |          |
     v          v          v          v
    Q0         Q1         Q2         Q3

       Parallel Output: Q3 Q2 Q1 Q0
```

## 5. Example

Initial Register Value:

```text
0000
```

Serial Input Sequence:

```text
1 → 0 → 1 → 1
```

| Clock | Serial Input | Parallel Output |
|---
