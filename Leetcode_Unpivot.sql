-- Table 1: Players
CREATE TABLE Players (
    Player_id INT PRIMARY KEY,
    Player_name VARCHAR(100)
);

-- Table 2: Grand Slam Wins per Year
CREATE TABLE GrandSlams (
    Year INT PRIMARY KEY,
    Wimbledon INT,
    Fr_open INT,
    US_open INT,
    Au_open INT
);

-- Insert sample data
INSERT INTO Players (Player_id, Player_name) VALUES
(1, 'Roger Federer'),
(2, 'Rafael Nadal'),
(3, 'Novak Djokovic'),
(4, 'Andy Murray');

INSERT INTO GrandSlams (Year, Wimbledon, Fr_open, US_open, Au_open) VALUES
(2020, 1, 2, 3, 3),
(2021, 3, 2, 3, 1),
(2022, 3, 2, 1, 3);

SELECT 
    p.Player_id,
    p.Player_name,
    COUNT(*) AS total_wins
FROM 
    (
        SELECT Wimbledon AS Player_id FROM GrandSlams
        UNION ALL
        SELECT Fr_open FROM GrandSlams
        UNION ALL
        SELECT US_open FROM GrandSlams
        UNION ALL
        SELECT Au_open FROM GrandSlams
    ) AS all_wins
JOIN Players p ON all_wins.Player_id = p.Player_id
GROUP BY p.Player_id, p.Player_name
HAVING COUNT(*) > 0
ORDER BY total_wins DESC;
