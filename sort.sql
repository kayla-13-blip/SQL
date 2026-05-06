DROP TABLE IF EXISTS Transactions;
CREATE TABLE Transactions (
    OrderID INT PRIMARY KEY,
    City VARCHAR(50),
    Price DECIMAL(10, 2),
    Quantity INT,
    Discount DECIMAL(5, 2),
    Status VARCHAR(20),
    Category VARCHAR(20)
);
SELECT 
    City, 
    COUNT(*) AS OrderCount,
    SUM(Price * Quantity) AS TotalRevenue, 
    ROUND(AVG(Discount), 2) AS AvgDiscount 
FROM Transactions
WHERE Status = 'Shipped'                   
  AND Category != 'Test'                   
GROUP BY City                             
HAVING TotalRevenue > 5000                
ORDER BY TotalRevenue DESC, City ASC;      
