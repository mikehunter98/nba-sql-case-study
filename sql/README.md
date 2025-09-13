# SQL Queries for NBA Case Study

This folder contains the SQL scripts used for the NBA MVP vs. Player of the Week analysis.  
Each file is designed to be run in **Google BigQuery** in sequence.

---

## Query Workflow

1. **00_clean_mvp_votes.sql**  
   - Cleans the MVP votes dataset by handling string `Rank` values (e.g. "8T").  
   - Ensures only valid numeric rankings are preserved for analysis.

2. **01_pow_counts.sql**  
   - Counts how many *Player of the Week* (POW) awards each player won per season.

3. **02_mvp_winners.sql**  
   - Extracts MVP winners (rank = 1) with their team and total points won.  

4. **03_pow_vs_mvp.sql**  
   - Joins MVP winners with their Player of the Week counts.  
   - Identifies whether MVP winners also earned weekly awards.

5. **04_summary.sql**  
   - Produces a clean summary table combining MVP winners, their teams, points won, and POW totals.  
   - Adds a Yes/No flag for whether the MVP won any Player of the Week awards.

---

## How to Run
1. Open the [Google BigQuery Console](https://console.cloud.google.com/bigquery).
2. Select your dataset: `nba-sql-case-study.nba_awards`.
3. Open each `.sql` file in order (00 → 04).  
   - Copy the contents of the file.  
   - Paste into a BigQuery query editor and run.  
4. Save query results as needed for analysis and visualization.

---

## Notes
- The MVP votes table had `Rank` stored as **STRING** (sometimes tied like `"8T"`).  
  - The `SAFE_CAST(REGEXP_REPLACE(...))` function is used to convert it into numbers.
- Data only covers up to 2020 for Player of the Week awards, so some modern MVPs (e.g., Jokic, Embiid) may not show POW counts.

---
