# Week 18 — Pre-processing, Assembly, and Binning

## Schedule

| Day | Time | Activity |
|-----|------|----------|
| Monday | 09:15–12:00 | Theory: pre-processing, assembly, binning (adapter trimming, QC, host removal) |
| Tuesday | 13:15–14:15 | Practical: sample pre-processing and QC |
| Tuesday | 14:30–16:00 | Practical: assembly and binning (part 1) |
| Friday | 09:15–10:30 | Practical: assembly and binning (part 2) |
| Friday | 10:45–12:00 | Guest lecture |

## Learning objectives

- Inspect raw reads and interpret QC reports
- Trim and filter reads with different parameters and understand trade-offs
- Remove host sequences
- Run metagenome assembly and evaluate output
- Perform initial binning
- Assess bin quality

## Practical instructions

See the [Week 18 wiki page](https://github.com/GeoGenetics/NBIB25004U-Metagenomics-2026/wiki/Week-18).

## Directory layout

- `data/` — input data and intermediate files
- `results/` — final outputs (git-ignored except `.gitkeep`)

## Discussion points

- What are the trade-offs between strict and loose QC parameters?
- How does host contamination impact downstream analyses?
- When should you use individual assemblies vs co-assemblies?
- How do different binning tools compare?
