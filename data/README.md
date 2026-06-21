# Data (Synthetic Sample)

The original research data is confidential and cannot be shared publicly. The files in this folder are **fully synthetic** and exist solely for reproducibility and demonstration purposes.

---

## Files

### `PE601_SAMPLE.xlsx`
Synthetic ego-network data for a single fictional entrepreneur. Mirrors the exact structure of the real input files used in the study.

**Sheet 1 — Attributes** (10 alters × 36 variables)

| Column group | Description |
|---|---|
| `Tie` | Alter ID (1–10) |
| `P1–P5` | Professional resource dimensions |
| `N1–N5` | Network resource dimensions |
| `LT1–LT4` | Long-term relationship indicators |
| `MD`, `MI`, `OT1`, `OT2` | Additional tie type flags |
| `Gender`, `Residence` | Categorical alter attributes |
| `Closeness`, `Trust` | Tie quality scores (1–5 scale) |
| `Time known` | Years known |
| `Communication frequency` | Contact frequency (1–4 scale) |
| `Close family` … `Other` | Relationship type indicators (binary) |

**Sheet 2 — Network** (10 × 10 upper-triangular adjacency matrix)

Tie strength between alters, encoded as 1–5. Empty cells = no tie. Used to compute density, constraint, and ego-network visualizations.

---

### `SAMPLE_EMIS_data.xlsx`
Synthetic financial benchmark dataset with 51 fictional companies (50 sector peers + 1 ego firm).

| Column | Description |
|---|---|
| `ID` | Company identifier (`SAMPLE001`–`SAMPLE050`, `SAMPLE_EGO`) |
| `Compañía` | Fictional company name |
| `ROA (%)` | Return on assets |
| `ROE (%)` | Return on equity |
| `Margen Neto (%)` | Net margin |
| `Margen Bruto (%)` | Gross margin |
| `Margen Operacional (%)` | Operating margin |
| `Ganancia (Pérdida) Neta` | Net profit/loss |
| `Razón De Liquidez (x)` | Current ratio |
| `Relación Deuda/Activos (%)` | Debt-to-assets ratio |
| `Total Ingreso Operativo` | Operating revenue |
| `Número de empleados` | Headcount |

Values are drawn from the 5th–95th percentile range of the real Pereira dataset to ensure realistic benchmark distributions. ~15% of values are intentionally set to `NaN` to reflect real-world data sparsity.

---

## How to run with the sample data

Update these three lines in `Reporte_V1.Rmd`:

```r
# Top of file — params section
params:
  ego_id: "SAMPLE_EGO"
  data_file: "PE601_SAMPLE.xlsx"

# Line ~51 — EMIS file path
emis_data_file <- "SAMPLE_EMIS_data.xlsx"
```

Then knit the document. The report will run end-to-end using the synthetic data.

---

## How the synthetic data was generated

Both files were generated programmatically in Python using `pandas` and `numpy`:
- Column structure copied exactly from real files
- Numeric values sampled from realistic distributions derived from real data percentiles
- Company names are clearly fictional (e.g. `NovaCorp S.A.S.`, `EjeHub Ltda.`)
- No real company names, IDs, financial figures, or personal information is included
