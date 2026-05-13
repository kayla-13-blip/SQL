-- Query to find customers whose name starts with 'a' AND contains 'or'
SELECT * 
FROM Customers
WHERE CustomerName LIKE 'a%' 
  AND CustomerName LIKE '%or%';
-- Query for names starting with 'a'
SELECT * FROM Customers WHERE CustomerName LIKE 'a%';

-- Query for names containing 'or'
SELECT * FROM Customers WHERE CustomerName LIKE '%or%';
-- Query to get product details and export countries grouped by customer
SELECT 
    CustomerID,
    CustomerName,
    ProductName,
    ExportCountry,
    SUM(Quantity) AS TotalProductsExported
FROM Orders
JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN Products p ON o.ProductID = p.ProductID
GROUP BY CustomerID, CustomerName, ProductName, ExportCountry
ORDER BY CustomerName ASC;
