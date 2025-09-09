# 🏀 Case Study: Do NBA Player of the Week Awards Align with MVP Voting?  

## 📌 Introduction  
The goal of this case study is to explore whether **short-term recognition** (Player of the Week awards) is an early signal of **long-term success** (MVP awards).  
This analysis combines **NBA Player of the Week data (1949–present)** with **NBA MVP voting data (2000–2023)** using SQL (BigQuery) and Python for preprocessing.  

---

## 📂 Data Preparation  

- **Player of the Week dataset**: Historical POW awards (dates, players, teams, seasons).  
- **MVP Voting dataset**: MVP ballots from 2000–2023, including vote shares, rank, and player stats.  
- **Data cleaning**:  
  - Python was used to merge multiple MVP CSV files into a single dataset.  
  - Columns were standardized (season formats, player names).  
  - Season range limited to **2000–2020** due to overlapping data availability.  

---

## ❓ Research Questions  

1. Do MVP winners typically earn multiple POW awards in their MVP season?  
2. Are there seasons where MVP winners earned **no** POW awards?  
3. How strong is the correlation between POW awards and MVP voting share?  
4. Are POW awards predictive of **MVP finalists** (Top 3 voting finishers)?  

---

## 🔧 Methodology  

- **SQL (BigQuery)**  
  - Used to join POW data with MVP votes on player and season.  
  - Aggregated POW awards per MVP candidate.  
- **Python**  
  - Combined CSVs into a unified MVP dataset.  
  - Performed quick sanity checks (duplicates, missing values).  

---

## 📊 Analysis & Results  

### 1. MVP Winners and POW Awards  
- Example finding: *Most MVP winners earned at least 2 POW awards in their MVP season.*  
- Exceptions: *Nikola Jokić (2021 MVP) had fewer documented POW awards due to missing data post-2020.*  

### 2. Correlation with Voting Share  
- POW award count showed a **positive correlation** with MVP vote share.  
- Not perfect — some players dominate without weekly awards, and vice versa.  

### 3. Outliers  
- Players who collected multiple POW awards but did not place high in MVP voting.  
- MVP winners with surprisingly few POW awards.  

---

## 📈 Visuals  

- Bar chart: MVP winners vs POW awards in their MVP season.  
- Scatterplot: MVP vote share (%) vs POW awards.  
- Timeline: Example player (LeBron James) showing POW awards across MVP seasons.  

---

## 📝 Conclusion  

- **Key insight**: POW awards are a useful indicator of MVP-level performance but not a guarantee.  
- **Practical takeaway**: Consistency (measured by MVP voting) and peak moments (POW awards) don’t always align.  
- **Next steps**:  
  - Extend dataset to include **post-2020 POW awards** for Jokic & Embiid MVP years.  
  - Explore whether POW awards align more closely with **All-NBA selections** than MVPs.  

---

## 👨‍💻 Author  

Michael Hunter  
