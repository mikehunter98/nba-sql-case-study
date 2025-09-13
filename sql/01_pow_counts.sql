-- 01_pow_counts.sql
-- Counts number of Player of the Week awards by player

SELECT
  Player,
  COUNT(*) AS pow_awards
FROM `nba-sql-case-study.nba_awards.player_of_week`
GROUP BY Player
ORDER BY pow_awards DESC;
