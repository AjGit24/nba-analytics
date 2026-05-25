 
    SELECT Player, Tm, PTS, AST, TRB
    FROM regular_season
    WHERE Tm != 'TOT'
    ORDER BY PTS DESC
    LIMIT 10
    