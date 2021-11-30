-- SELECT o.OrderID, o.OrderDate,
-- (SELECT UnitPrice*Quantity*(1-Discount) as 'Total Price')
-- FROM Orders o
-- INNER JOIN [Order Details] od
-- ON od.OrderID=o.OrderID
-- INNER JOIN (SELECT o.OrderDate, AVG(od.UnitPrice*od.Quantity*(1-od.Discount)) OVER (ORDER BY od.OrderDate ROWS BETWEEN 2 PRECEDING AND 2 FOLLOWING) AS '5pt Moving Average of Total Price') av
-- ON o.OrderID = av.OrderID

SELECT o.OrderID, o.OrderDate, [Total Price], AVG([Total Price]) OVER (ORDER BY OrderDate ROWS BETWEEN 2 PRECEDING AND 2 FOLLOWING) AS '5pt Moving AVG'
FROM Orders o
INNER JOIN [Order Details] od
ON o.OrderID = od.OrderID
INNER JOIN (SELECT orderID, SUM((UnitPrice * Quantity * (1 - Discount))) AS 'Total Price' FROM [Order Details] GROUP BY OrderID) sq1 
ON o.orderID = sq1.orderID
GROUP BY o.OrderID, o.OrderDate, [Total Price]


-- SELECT OrderID, EmployeeID,
-- LAST_VALUE(OrderID) OVER (PARTITION BY EmployeeID ORDER BY OrderID ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS 'Last Order for Employee'
-- FROM Orders

-- SELECT OrderID, CustomerID, EmployeeID, OrderDate,
-- FIRST_VALUE(DATEDIFF(d, OrderDate, GETDATE())) OVER (PARTITION BY CustomerID ORDER BY OrderDate) AS 'Time Since Customers First Order in days'
-- FROM Orders

-- SELECT ProductName, SupplierID,
-- FIRST_VALUE(UnitsOnOrder) OVER (PARTITION BY SupplierID ORDER BY UnitsOnOrder DESC) AS 'Most Units on Order from Supplier'
-- FROM Products

-- SELECT ProductName, UnitPrice,
-- LEAD(ProductName, 1, NULL) OVER (ORDER BY UnitPrice) AS 'Next Product Price'
-- FROM Products


-- SELECT OrderID, CustomerID, OrderDate,
-- RANK() OVER (PARTITION BY CustomerID ORDER BY OrderDate) AS 'Order Date Rank Per Customer'
-- FROM Orders
-- ORDER BY OrderID

-- SELECT ProductName, UnitPrice, CategoryID,
-- RANK() OVER (PARTITION BY CategoryID ORDER BY UnitPrice DESC) AS 'Row Number'
-- FROM Products


-- SELECT ProductID, 
-- ProductName, 
-- CategoryName,
-- SUM(UnitsOnOrder) OVER (PARTITION BY c.CategoryID) AS 'Total Units On Order'
-- FROM Products p
-- INNER JOIN Categories c 
-- ON c.CategoryID = p.CategoryID
-- ORDER BY [Total Units On Order];


-- SELECT p.ProductID, p.ProductName, c.CategoryName,
-- Count(*) OVER (PARTITION BY p.CategoryID) -1 AS "Number of Other Products in the Same Category"
-- FROM Products p
-- INNER JOIN Categories c
-- ON p.CategoryID=c.CategoryID


-- SELECT OrderID, EmployeeID, OrderDate,
-- COUNT(*)OVER (PARTITION BY EmployeeID) AS 'Employee Order Count'
-- FROM Orders
-- ORDER BY EmployeeID



-- SELECT o.EmployeeID, eoc.[Employee Order Count], CustomerID,
-- OrderDate, OrderID
-- FROM Orders o
-- INNER JOIN (SELECT EmployeeID,
-- COUNT(*) AS 'Employee Order Count'
-- FROM Orders
-- GROUP BY EmployeeID) eoc
-- ON eoc.[EmployeeID] = o.EmployeeID;