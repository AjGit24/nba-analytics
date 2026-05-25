
    SELECT Player, Tm, ROUND("FG%",3) as FG_PCT, ROUND ("eFG%", 3) as eFG_PCT, PTS
    FROM regular_season
    WHERE Tm != 'TOT' AND G >= 20 AND MP >= 15
    ORDER BY "eFG%" DESC
    LIMIT 10
    