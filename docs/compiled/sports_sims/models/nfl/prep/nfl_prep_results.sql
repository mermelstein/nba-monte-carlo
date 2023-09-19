SELECT
    Week as wk,
    "Winnertie" as winner,
    PtsW as winner_pts,
    "Losertie" as loser,
    PtsL as loser_pts,
    CASE WHEN PtsL = PtsW THEN 1 ELSE 0 END as tie_flag
FROM '/workspaces/nba-monte-carlo/data/data_catalog/psa/nfl_results/*.parquet'