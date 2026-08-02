# Ternary Standard-Cell Library for Static Timing Analysis

This repository accompanies the paper *"Transition Time Balancing for 6-Edge
Static Timing Analysis of Ternary Logic Circuits."* It releases the optimized
ternary standard cells and the corresponding **Ternary Liberty** timing library
introduced in the paper.

The cells are optimized to remove the large transition-time disparity toward
V_DD/2, so that a single, accurate slew-index range covers all ternary
transitions and standard-cell timing characterization becomes practical.

## Contents

| File | Description |
|------|-------------|
| `std_cells.sp` | A single SPICE netlist defining all optimized ternary standard cells as `.subckt` subcircuits. Each subcircuit specifies the per-transistor CNTFET parameters (chiral vector and number of nanotubes) that result from the proposed gate optimization. |
| `ternary.lib` | The **Ternary Liberty** file characterized from the optimized cells. It extends the conventional binary Liberty with expanded timing tables and a timing arc table that capture all six ternary transitions. |
| `README.md` | This file. |

> Note: These subcircuits correspond to the cells **after** optimization. They
> are the standard cells used to generate `ternary.lib`.

## Cells

The library includes the following 24 optimized ternary standard cells, each
defined as a `.subckt` in `std_cells.sp`:

| Cell | Cell | Cell | Cell |
|------|------|------|------|
| `INV`   | `STI`   | `PTI`   | `NTI`   |
| `STI12` | `STI01` | `NMIN`  | `NMAX`  |
| `NNMIN` | `PNMIN` | `NANY`  | `NCONS` |
| `PROD`  | `SUM`   | `MB0`   | `MB1`   |
| `MB2`   | `MB3`   | `MB4`   | `MB5`   |
| `MB6`   | `CNT1`  | `CNT2`  | `MUX`   |

All cells are synthesized following the ternary synthesis method of [19] in the
paper and then optimized as described therein.

## Requirements

The SPICE netlists are **not self-contained**: they instantiate CNTFET devices
and therefore require a **32 nm CNTFET compact model** to be simulated.

- **CNTFET model.** We use the Stanford CNTFET compact model
  (see references [22], [23] in the paper). Due to licensing, the model is
  **not redistributed here**. Please obtain it from its original source and
  make it available to your simulator (e.g., via a `.include` / `.lib`
  statement) before running the netlists.
- **SPICE simulator.** The cells were characterized with Synopsys HSPICE
  2021.09. Other SPICE-compatible simulators may require minor syntax
  adjustments.
- **Supply / process.** 32 nm CNTFET technology; unbalanced ternary logic with
  logic states 0, 1, 2 mapped to GND, V_DD/2, and V_DD.

## Usage

1. Obtain the CNTFET compact model and reference it from your simulator setup.
2. Instantiate any `.subckt` from `std_cells.sp` in a SPICE testbench to
   reproduce its transient / I–V behavior.
3. Load `ternary.lib` into a Liberty-aware timing tool to inspect the
   characterized delays, output transition times, and timing arcs.

## Citation

If you use these files, please cite the accompanying paper. The full
bibliographic entry will be added here once the paper is published.

## License

The released cells and library are distributed under the license specified in
the `LICENSE` file. The CNTFET compact model is **not** covered by this license
and remains under its original terms.

## Contact

For questions or issues, please open an issue in this repository.
