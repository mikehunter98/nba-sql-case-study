-- 04_summary.sql
-- Final summary of MVP winners with Player of the Week totals

WITH pow_counts AS (
  SELECT
    Player,
    SeasonShort AS Season,
    COUNT(*) AS POW_Awards
  FROM `nba-sql-case-study.nba_awards.player_of_the_week`
  GROUP BY Player, SeasonShort
),

mvp_winners AS (
  SELECT
    Season,
    Player,
    Team,
    PointsWon
  FROM `nba-sql-case-study.nba_awards.mvp_votes`
  WHERE SAFE_CAST(REGEXP_REPLACE(Rank, r'[^0-9]', '') AS INT64) = 1
)

SELECT
  m.Season,
  m.Player,
  m.Team,
  m.PointsWon,
  IFNULL(p.POW_Awards, 0) AS POW_Awards,
  CASE 
    WHEN IFNULL(p.POW_Awards, 0) > 0 THEN 'Yes'
    ELSE 'No'
  END AS Had_POW
FROM mvp_winners m
LEFT JOIN pow_counts p
  ON m.Player = p.Player
  AND m.Season = p.Season
ORDER BY m.Season;
