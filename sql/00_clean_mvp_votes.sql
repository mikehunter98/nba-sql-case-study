-- 00_clean_mvp_votes.sql
-- Cleans the MVP dataset: extracts numeric rank, standardizes types

CREATE OR REPLACE TABLE `nba-sql-case-study.nba_awards.mvp_votes_clean` AS
SELECT
  Player AS player,
  Tm AS team,
  CAST(year AS INT64) AS year,
  SAFE_CAST(REGEXP_EXTRACT(Rank, r'^\d+') AS INT64) AS rank,
  SAFE_CAST(`Pts Won` AS INT64) AS pts_won,
  SAFE_CAST(`Pts Max` AS INT64) AS pts_max,
  SAFE_CAST(Share AS FLOAT64) AS share,
  SAFE_CAST(Age AS INT64) AS age,
  SAFE_CAST(G AS INT64) AS g,
  SAFE_CAST(MP AS FLOAT64) AS mp,
  SAFE_CAST(PTS AS FLOAT64) AS pts,
  SAFE_CAST(TRB AS FLOAT64) AS trb,
  SAFE_CAST(AST AS FLOAT64) AS ast,
  SAFE_CAST(WS AS FLOAT64) AS ws
FROM `nba-sql-case-study.nba_awards.mvp_votes`;
