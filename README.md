# Bayesian Joint Spatio-Temporal Modelling of HIV and TB in Kenya (2012–2017)

[![DOI](https://img.shields.io/badge/DOI-10.1371%2Fjournal.pone.0234456-blue)](https://doi.org/10.1371/journal.pone.0234456)
[![Zenodo](https://zenodo.org/badge/DOI/10.5281/zenodo.19680403.svg)](https://doi.org/10.5281/zenodo.19680403)
[![License: CC BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by/4.0/)

## Publication

This repository contains the data, code, and documentation supporting:

> Otiende, V.A., Achia, T.N., & Mwambi, H.G. (2020). **Bayesian hierarchical modeling of joint spatiotemporal risk patterns for Human Immunodeficiency Virus (HIV) and Tuberculosis (TB) in Kenya.** *PLOS ONE*, 15(7), e0234456. https://doi.org/10.1371/journal.pone.0234456

## Repository Contents

| File | Description |
|---|---|
| `pone_0234456_s005.csv` | HIV new diagnoses and projected populations by county, 2012–2017 |
| `pone_0234456_s004.csv` | TB new notifications and projected populations by county, 2012–2017 |
| `pone_0234456_s001.R` | Original R analysis script |
| `HIV_TB_Kenya_Analysis.Rmd` | Cleaned and fully documented R Markdown analysis script |
| `HIV_TB_Kenya_Codebook.pdf` | Codebook in ACM journal style (PDF) — all variables, derived measures, and model indices |
| `HIV_TB_Kenya_Codebook.tex` | LaTeX source file for the codebook |

## How to Reproduce the Analysis

### Prerequisites

Install R (≥ 4.0) and the following packages:

```r
install.packages(c(
  "sp", "sf", "rgdal", "spdep", "maptools", "spacetime",
  "maps", "mapdata", "RColorBrewer", "lattice", "latticeExtra",
  "gridExtra", "grid", "car", "epitools", "DCluster",
  "plotrix", "knitr"
))

# INLA requires a separate installation:
install.packages("INLA",
  repos = c(getOption("repos"), INLA = "https://inla.r-inla-download.org/R/stable"),
  dep = TRUE)
```

### Steps

1. Clone this repository:
```bash
git clone https://github.com/YOUR-USERNAME/HIV-TB-Kenya-Spatiotemporal.git
```
2. Open `HIV_TB_Kenya_Analysis.Rmd` in RStudio and click **Knit**

> **Note:** The INLA model chunk is cached. First run will take approximately 20–40 minutes.

## Data Sources

- **HIV/TB case counts:** Kenya Ministry of Health, National Disease Surveillance Programme
- **Population projections:** Kenya National Bureau of Statistics (KNBS). www.knbs.or.ke

## Citation

```bibtex
@article{otiende2020bayesian,
  title   = {Bayesian hierarchical modeling of joint spatiotemporal risk patterns for {HIV} and {TB} in {Kenya}},
  author  = {Otiende, Verrah A. and Achia, Thomas N. and Mwambi, Henry G.},
  journal = {PLOS ONE},
  volume  = {15},
  number  = {7},
  pages   = {e0234456},
  year    = {2020},
  doi     = {10.1371/journal.pone.0234456}
}
```

## Authors

| Name | Affiliation | ORCID |
|---|---|---|
| Verrah A. Otiende | Pan African University, PAUSTI, Nairobi | [0000-0001-6147-3547](https://orcid.org/0000-0001-6147-3547) |
| Thomas N. Achia | University of KwaZulu-Natal | [0000-0002-0700-9468](https://orcid.org/0000-0002-0700-9468)|
| Henry G. Mwambi | University of KwaZulu-Natal | [0000-0001-9654-400X](https://orcid.org/0000-0001-9654-400X) |

## Licence

This work is licensed under [Creative Commons Attribution 4.0 International](https://creativecommons.org/licenses/by/4.0/), consistent with the open access licence of the published article.
