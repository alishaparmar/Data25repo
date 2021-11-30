--EXERCISE 1

-- SELECT OrderID AS 'Order Number', 
-- FORMAT (UnitPrice*Quantity*Discount, 'C')
-- FROM [Order Details]
-- WHERE (UnitPrice*Quantity*Discount= (
--     SELECT MAX(UnitPrice*Quantity*Discount)
--     FROM [Order Details]))


-- SELECT COUNT(*) 
-- FROM Orders
-- WHERE Freight >100.00 
-- AND (ShipCountry = 'USA' 
-- OR ShipCountry='UK');

-- SELECT r.RegionID, FORMAT(SUM(od.UnitPrice*Quantity*(1-Discount)),'C') 
-- AS 'Total Sales' 
-- FROM Region r
-- INNER JOIN Territories t ON r.RegionID=t.RegionID
-- INNER JOIN EmployeeTerritories et ON et.TerritoryID=t.TerritoryID
-- INNER JOIN Orders o ON o.EmployeeID = et.EmployeeID
-- INNER JOIN [Order Details] od ON od.OrderID = o.OrderID
-- GROUP BY r.RegionID
-- HAVING SUM(od.UnitPrice*Quantity*(1-Discount))>1000000;

-- SELECT TitleOfCourtesy + ' '+ FirstName + ' '+ LastName, City 
-- FROM Employees
-- WHERE Country='UK'

-- SELECT Count(*) AS 'No.' FROM Products p
-- INNER JOIN Categories c ON c.CategoryID=p.CategoryID 
-- GROUP BY CategoryName 
-- ORDER BY 'NO.' DESC;

-- SELECT DISTINCT s.SupplierID, s.Country FROM Products p
-- INNER JOIN Suppliers s ON p.SupplierID = s.SupplierID
-- WHERE QuantityPerUnit LIKE '%bottles%';

-- SELECT * FROM Products
-- WHERE QuantityPerUnit LIKE '%bottles%';


-- SELECT CustomerID, CompanyName FROM Customers
-- WHERE City ='London' OR City = 'Paris';