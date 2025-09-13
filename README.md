git add README.md
git commit -m "Update README with case study link"
git push origin main
# nba-sql-case-study
Case study analyzing whether NBA Player of the Week awards align with MVP voting years, using BigQuery + Python.
## Test Commit - Michael Hunter
# NBA SQL Case Study 🏀

[![View Report](https://img.shields.io/badge/📄%20Case%20Study-Read%20Now-blue)](report/case_study.md)
[![SQL Workflow](https://img.shields.io/badge/🛠️%20SQL-Workflow-orange)](sql)
[![Python Scripts](https://img.shields.io/badge/🐍%20Python-Scripts-green)](python)
[![Visuals](https://img.shields.io/badge/📊%20Visuals-Charts%20%26%20Plots-purple)](visuals)





This project analyzes NBA award data (MVP, Player of the Week, etc.) using SQL and Python for data preparation, hosted in BigQuery.

📂 **Project Structure**
- `data/` → raw datasets (CSV files)
- `sql/` → BigQuery queries
- `python/` → scripts for preprocessing and merging datasets
- `visuals/` → charts and visualizations
- `report/` → project documentation

## Repository Structure

- **data/** → Raw and cleaned datasets used in analysis  
- **python/** → Scripts for data cleaning and merging MVP datasets  
- **sql/** → [SQL queries](sql/README.md) for data preparation and analysis in BigQuery  
- **visuals/** → Charts and visualizations  
- **report/** → Final case study report  

---

## How to Reproduce the Analysis
1. Upload datasets into BigQuery under the project: `nba-sql-case-study`.
2. Run SQL scripts in order: [see workflow here](sql/README.md).
3. Use Python scripts for merging MVP vote CSVs before upload.
4. Review results and visualizations in the `visuals/` folder.

---

## Final Report
The complete write-up of this project is available here:  
📄 [Case Study Report](report/case_study.md)


📖 **Case Study Report**  
Read the full write-up here: [Case Study Report](report/case_study.md)
