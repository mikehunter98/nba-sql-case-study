-- 02_mvp_winners.sql
-- Finds MVP winners by year
-- Handles cases where Rank column is stored as string (e.g. "1", "1T")

SELECT
  Season,
  Player,
  Team,
  FirstPlaceVotes,
  PointsWon,
  Rank
FROM `nba-sql-case-study.nba_awards.mvp_votes`
WHERE SAFE_CAST(REGEXP_REPLACE(Rank, r'[^0-9]', '') AS INT64) = 1
ORDER BY Season;
