CREATE TABLE IF NOT EXISTS Salesman(
 Salesman_id TEXT PRIMARY KEY,
 name TEXT,
 city TEXT,
 commision TEXT
 );
 INSERT INTO Salesman(Salesman_id, name, city, commision)
 VALUES
("5001", "James Hoog" "0.15", "New York"),
("5002", "Nail Knite", "0.13", "Paris"),
("5005", "Pit Alex"," 0.11", "London)",
("5006", "Mc ivon", "0.14", "Paris"),
("5007", "Paul Adam", "0.13", "Rome"),
("5003", "Lauson Hen", "0.12", "San Jose");
CREATE TABLE IF NOT EXISTS Customer(
    customer_id TEXT,
    cust_name TEXT PRIMARY KEY,
    city TEXT,
    grade TEXT,
    Salesman_id TEXT);
INSERT INTO Customer(customer_id, cust_name, city, grade, Salesman_id)
VALUES
("3002", "nick rimando","new york","100","5001"),
("3007", "brad davis","new york","200","5001"),
("3005", "graham zusi","califonia","200","5002"),
("3008", "julian green","london","300","5002"),
("3004", "fabian johnson","paris","300","5006"),
("3009", "geoff cameron","berlin","100","5003"),
("3003", "jozy altidor","moscow","200","5007"),
("3001", "drad guzan","london","100","5005");
CREATE TABLE IF NOT EXISTS Orders(
 ord_no TEXT PRIMARY KEY,
 purch_amt TEXT,
 ord_date TEXT,
 customer_id TEXT,
 Salesman_id TEXT);
 INSERT INTO Orders(ord_no,purch_amt,ord_date,customer_id,Salesman_id)
 VALUES
("70001","150.5","2012-10-05","3005","5002")
("70009","270.65","2012-09-10","3001","5001")
("70002","65.26","2012-10-05","3002","5003"),
("70004","110.5","2012-08-17","3009","5007"),
("70007","948.5","2012-09-10","3005","5005"),
("70005","2400.6","2012-07-27","3007","5006");
SELECT customer.cust_name, salesman.name, salesman.city
FROM Customer
JOIN Salesman ON Customer.city = Salesman.city;
SELECT Customer.cust_name, salesman.name
FROM Customer
JOIN Salesman ON Salesman_id=Salesman.Salesman_id;
SELECT Orders.ord_no, Customers.cust_name, Orders.customer_id, Orders.Salesman_id
FROM Orders 
JOIN Customer ON Orders.customer_id = Customer.customer_id
JOIN Salesman ON Orders.Salesman_id= Salesman.Salesman_id
WHERE Customer.grade IS NOT NULL;
SELECT Customer.cust_name AS "Customer",
Customer.city AS "City",
Salesman.name AS "Salesman",
Salesman.commision
FROM Customer
JOIN Salesman ON Customer.Salesman_id = Salesman.Salesman_id
WHERE Salesman.commision BETWEEN 0.12 AND 0.14;








