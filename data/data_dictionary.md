# 📘 Data Dictionary

This project uses two primary datasets:

---

## 1. Player of the Week (POW)
**Source:** Kaggle – NBA Player of the Week Awards (1949–present)

| Column Name       | Type    | Description |
|-------------------|---------|-------------|
| Date              | DATE    | Date award was announced |
| Player            | STRING  | Full name of the awarded player |
| Team              | STRING  | Team abbreviation at time of award |
| Conference        | STRING  | Conference of the player’s team |
| Season            | STRING  | Season in `YYYY-YYYY` format |
| Season Short      | INT64   | Season end year (e.g. 2001 for 2000–2001) |

---

## 2. MVP Voting Data
**Source:** Kaggle – NBA MVP Voting (2000–2023)

| Column Name       | Type    | Description |
|-------------------|---------|-------------|
| Rank              | INT64   | Player’s MVP voting rank that season |
| Player            | STRING  | Player’s full name |
| Age               | INT64   | Age during that season |
| Tm                | STRING  | Team abbreviation |
| First             | INT64   | Number of first-place votes |
| Pts Won           | FLOAT64 | Total MVP points won |
| Pts Max           | FLOAT64 | Maximum possible points |
| Share             | FLOAT64 | Voting share (0–1) |
| G                 | INT64   | Games played |
| MP                | FLOAT64 | Minutes per game |
| PTS               | FLOAT64 | Points per game |
| TRB               | FLOAT64 | Rebounds per game |
| AST               | FLOAT64 | Assists per game |
| STL               | FLOAT64 | Steals per game |
| BLK               | FLOAT64 | Blocks per game |
| FG%               | FLOAT64 | Field goal percentage |
| 3P%               | FLOAT64 | Three-point percentage |
| FT%               | FLOAT64 | Free throw percentage |
| WS                | FLOAT64 | Win shares |
| WS/48             | FLOAT64 | Win shares per 48 minutes |
| Year              | INT64   | Season end year (e.g. 2001 for 2000–2001) |

---

📌 *Note: For consistency, `Season Short` (POW dataset) and `Year` (MVP dataset) are aligned when joining.*
