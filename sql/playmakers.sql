
    SELECT Player, Tm, AST, TOV, ROUND(AST/NULLIF(TOV, 0), 2) as AST_TO_ratio
    FROM regular_season
    WHERE Tm != 'TOT' AND G >= 20
    ORDER BY AST_TO_ratio DESC
    LIMIT 10
    