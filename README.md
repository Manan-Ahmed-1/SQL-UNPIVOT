This repository contains SQL code that solves a tournament win analysis challenge using SQL Server.

## 📋 Problem Statement

You are given two tables:

1. **Players**
   - `Player_id` (INT): Primary key
   - `Player_name` (VARCHAR): Name of the player

2. **GrandSlams**
   - `Year` (INT): Primary key
   - `Wimbledon`, `Fr_open`, `US_open`, `Au_open` (INT): Represent the `Player_id` of the winner for each Grand Slam tournament that year.

### 🎯 Goal

Write an SQL query to report the total number of Grand Slam tournaments won by each player.  
- **Only include players who have at least one win.**  
- Sort results by total wins in descending order.

---

## 🛠️ SQL Features Used

- Table creation and sample data insertion
- `UNION ALL` to normalize data
- `JOIN` to map player IDs to names
- `GROUP BY`, `COUNT`, and `HAVING` to filter and aggregate
- `ORDER BY` for ranking results

---

## 📂 Files

- `tournament_wins_query.sql`: Contains all the code to create the tables, insert sample data, and run the final solution query.

---

## ✅ Sample Output (Based on Sample Data)

| Player_id | Player_name     | total_wins |
|-----------|------------------|-------------|
| 3         | Novak Djokovic   | 5           |
| 2         | Rafael Nadal     | 3           |
| 1         | Roger Federer    | 2           |

---

## 🔧 How to Run

1. Open SQL Server Management Studio (SSMS) or any SQL environment that supports SQL Server.
2. Copy and execute the script from `tournament_wins_query.sql`.
3. Observe the result of the final query.

---

## 📌 License

This project is open-source and available under the [MIT License](LICENSE).
