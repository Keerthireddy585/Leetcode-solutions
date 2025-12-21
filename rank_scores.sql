SELECT 
    score,
    DENSE_RANK() OVER (ORDER BY score DESC) AS score_rank
FROM Scores
ORDER BY score DESC;
