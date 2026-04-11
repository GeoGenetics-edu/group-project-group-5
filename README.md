# NBIB25004U — Metagenomics Analyses for Microbiomes 2026

## Group _N_

| Member | KU-ID |
|--------|-------|
| _Name_ | _abc123_ |
| _Name_ | _abc123_ |
| _Name_ | _abc123_ |
| _Name_ | _abc123_ |

## Links

- [Course wiki (practical instructions)](https://github.com/GeoGenetics/NBIB25004U-Metagenomics-2026/wiki)
- [Main course repository](https://github.com/GeoGenetics/NBIB25004U-Metagenomics-2026)
- [Mjolnir HPC documentation](https://hpc.ku.dk/)

## Instructors

| Name | Role | Email |
|------|------|-------|
| Urvish Trivedi | Coordinator | urvish.trivedi@bio.ku.dk |
| Antonio Fernandez-Guerra | Coordinator | antonio.fernandez-guerra@sund.ku.dk |
| Soren J. Sorensen | Coordinator | sjs@bio.ku.dk |
| Morten T. Limborg | Instructor | morten.limborg@sund.ku.dk |

## Repository structure

```
.
├── scripts/                       # Your own utility scripts
├── week18-preprocessing/          # Read QC, assembly, and binning
├── week19-mags/                   # MAG characterisation (taxonomy & function)
├── week20-community-analysis/     # Diversity metrics, phyloseq, ordination
├── week21-differential/           # Differential abundance, ML methods
├── project/                       # Weeks 22–24: group project workspace
└── report/                        # Final group report
```

Each weekly folder has its own README with objectives and a link to the corresponding wiki page.

## Getting started

```bash
git clone git@github.com:geogenetics-edu/metagenomics-2026-<your-team>.git
cd metagenomics-2026-<your-team>
```

## Basic git workflow

```bash
git add <files>           # Stage your changes
git commit -m "message"   # Commit with a meaningful message
git push                  # Push to the shared repo
git pull                  # Pull your teammates' changes
```

Commit early and often. Write meaningful commit messages. Make sure all group members contribute commits.
