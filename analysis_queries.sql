-- Most successful team
SELECT winner, COUNT(*) as wins
FROM matches
WHERE winner IS NOT NULL
GROUP BY winner
ORDER BY wins DESC;

-- Players with most MOM awards
SELECT player_of_match, COUNT(*) as awards
FROM matches
GROUP BY player_of_match
ORDER BY awards DESC
LIMIT 10;

-- Batsman with highest runs
SELECT batsman, SUM(batsman_runs) as runs
FROM deliveries
GROUP BY batsman
ORDER BY runs DESC
LIMIT 10;

-- Bowlers with most wickets
SELECT bowler, COUNT(player_dismissed) as wickets
FROM deliveries
WHERE dismissal_kind NOT IN ('run out', 'retired hurt', 'obstructing the field')
GROUP BY bowler
ORDER BY wickets DESC
LIMIT 10;
