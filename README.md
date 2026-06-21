# Entrepreneurial Social Networks & Violence in Colombia
Built as Research Assistant · Universidad de los Andes · Prof. Sebastián León Schorch PhD

---

## Overview

This project analyzes how violence and social mobility shape the structure of entrepreneurial networks across Colombian cities. I designed and built an end-to-end parameterized reporting system that combines ego-network analysis and financial benchmarking, generating individual strategic intelligence reports for each firm in a multi-city dataset.

The system takes a company ID and city as inputs and automatically produces a fully tailored HTML report covering that firm's financial position and network structure, benchmarked against its sector.

---

## Repo structure

```
entrepreneurial-networks-colombia/
│
├── Reporte_V1.Rmd                 # Main parameterized R Markdown report
├── styles.css                     # Custom stylesheet for HTML output
├── header.html                    # Custom HTML header for report branding
├── css.R                          # CSS generation script
│
├── data/
│   ├── README.md                  # Data documentation (read this first)
│   ├── PE601_SAMPLE.xlsx          # Synthetic ego-network data (10 alters)
│   └── SAMPLE_EMIS_data.xlsx      # Synthetic financial benchmark data (51 firms)
│
└── README.md
```

---

## Quickstart

**1. Clone the repo and open in RStudio**
 
```bash
git clone https://github.com/SofiaCalderonVa/entrepreneurial-networks-colombia.git
cd entrepreneurial-networks-colombia
```
 
**2. Install required R packages**
 
```r
install.packages(c(
  "readxl", "knitr", "dplyr", "tidyr", "readr", "tidyverse",
  "igraph", "ggplot2", "DT", "htmltools", "scales",
  "visNetwork", "kableExtra", "gridExtra"
))
```
 
**3. Knit the report**
 
The file is pre-configured to run on the synthetic sample data out of the box. Open `Reporte_V1.Rmd` in RStudio, set your working directory to the repo root, and hit **Knit**. A full HTML report for `EjemploEmpresa S.A.S.` will be generated.
 
**4. Run for your own data**
 
To adapt the report to a real company, update two parameters at the top of `Reporte_V1.Rmd`:
 
```r
params:
  ego_id: "YOUR_COMPANY_ID"
  data_file: "data/YOUR_COMPANY.xlsx"
```
 
And one file path further down:
 
```r
emis_data_file <- "data/YOUR_CITY_EMIS_data.xlsx"
```
 
See `data/README.md` for the expected file structure.

---

## What the system does

### Financial benchmarking
- Loads firm-level financial data from EMIS (liquidity, leverage, profitability)
- Winsorizes at 1st–99th percentile to build robust sector benchmarks
- Positions each firm across quartiles for ROA, ROE, net/gross/operating margin, current ratio, and debt ratio
- Generates dynamic narrative text that adapts to each firm's specific financial profile

### Network analysis
- Constructs ego-networks from survey data using `igraph`
- Computes structural metrics: **density**, **Burt's constraint**, degree centrality
- Visualizes networks interactively with `visNetwork`, encoding:
  - Tie strength as background edge weight
  - Any alter attribute (closeness, time known) as edge thickness
  - Categorical attributes (gender, residence) as node color
- Benchmarks each firm's network metrics against city-level averages

### Parameterized reporting
- Fully automated HTML report per firm via R Markdown `params`
- Dynamic narrative adapts to the firm's actual metrics — no manual editing
- Custom CSS and HTML header for polished, branded output

---

## Key concepts

| Concept | Description |
|---|---|
| Network density | Share of possible ties that exist |
| Burt's constraint | How much ego's contacts know each other |
| Structural holes | Gaps between unconnected groups |
| Ego-network | Local network centered on a single firm and its direct contacts |

---

## Stack

`R` · `igraph` · `visNetwork` · `ggplot2` · `tidyverse` · `DT` · `kableExtra` · `readxl` · `R Markdown` · `CSS`

---

## References

- Burt, R. S. (1992). *Structural Holes: The Social Structure of Competition*. Harvard University Press.
- Burt, R. S. (2004). Structural holes and good ideas. *American Journal of Sociology*, 110(2), 349–399.

---

*Universidad de los Andes · Bogotá, Colombia*
