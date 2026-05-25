
    SELECT r.Player, r.Tm, r.PTS as Regular_PTS, p.PTS as Playoff_PTS, ROUND(p.PTS - r.PTS, 1) as PTS_DIFFERENCE
    FROM regular_season r 
    JOIN playoffs p on r.player = p.player
    where r.TM != 'TOT' AND p.TM != 'TOT' AND r.G >= 20 AND p.G >= 5
    ORDER BY PTS_DIFFERENCE DESC
    LIMIT 10
    