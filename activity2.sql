DROP TABLE IF EXISTS salesman;
DROP TABLE IF EXISTS orders;
CREATE TABLE Salesman(
Salesman_id TEXT PRIMARY KEY,
name TEXT,
comission REAL,
CITY TEXT);
INSERT INTO Salesman(Salesman_id, name, comission, city) VALUES
('5001', 'James Hoog', 0.15, 'New York'),
('S2', 'Nail Knite', 0.13, 'Paris'),
('S4', 'Pit Alex', 0.11, 'London'),
('S5', 'Mc ivon', 0.14, 'Paris');
SELECT * FROM Salesman;

CREATE TABLE IF NOT EXISTS Orders(
ord_no TEXT PRIMARY KEY,
Punch_amt REAL,
ord_date TEXT,
customer_id TEXT,
Salesman_id TEXT);
INSERT INTO Orders (ord_no, punch_amt, ord_date, customer_id,Salesman_id) VALUES
('70001', 150.5, '202-10-05','3005', '5002'),
('70009', 270.65, '2012-09-10', '3001','5001'),
('70007', 250.75, '2012-08-12', '3007','5003'),
('70004', 243.65, '2012-05-10', '3003','5002');
SELECT * FROM Orders;
SELECT name, comission
FROM Salesman;

