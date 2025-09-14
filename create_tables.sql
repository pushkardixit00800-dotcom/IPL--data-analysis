CREATE TABLE matches (
    match_id INT PRIMARY KEY,
    season INT,
    city VARCHAR(50),
    team1 VARCHAR(50),
    team2 VARCHAR(50),
    toss_winner VARCHAR(50),
    toss_decision VARCHAR(10),
    winner VARCHAR(50),
    player_of_match VARCHAR(50),
    venue VARCHAR(100)
);

CREATE TABLE deliveries (
    delivery_id INT AUTO_INCREMENT PRIMARY KEY,
    match_id INT,
    inning INT,
    batting_team VARCHAR(50),
    bowling_team VARCHAR(50),
    over_no INT,
    ball_no INT,
    batsman VARCHAR(50),
    bowler VARCHAR(50),
    batsman_runs INT,
    extra_runs INT,
    total_runs INT,
    dismissal_kind VARCHAR(50),
    player_dismissed VARCHAR(50),
    FOREIGN KEY (match_id) REFERENCES matches(match_id)
);
