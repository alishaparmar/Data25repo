--EXERCISE 3

-- SELECT FirstName+' ' + LastName AS 'Employee Name', ReportsTo 
-- FROM Employees

SELECT s.CompanyName, SUM(od.UnitPrice*Quantity*(1-Discount)) AS 'Total Sales'
FROM [Order Details] od
INNER JOIN Products p ON p.ProductID=od.ProductID
INNER JOIN Suppliers s ON s.SupplierID=p.SupplierID
GROUP BY s.CompanyName
HAVING SUM(od.UnitPrice*Quantity*(1-Discount))>10000;


