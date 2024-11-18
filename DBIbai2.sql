USE Northwind

SELECT COUNT(OrderID) as COUNT, CustomerID  FROM Orders GROUP BY CustomerID Having COUNT(OrderID) >=4
SELECT * FROM Orders

SELECT OrderID, ProductID, Quantity FROM [Order Details] WHERE 
					UnitPrice BETWEEN 50 AND 100 AND Quantity = 20

SELECT AVG(UnitPrice), OrderID FROM [Order Details] GROUP BY OrderID


SELECT * FROM Orders WHERE MONTH(OrderDate) = 7 AND YEAR(OrderDate) =1996


SELECT DISTINCT(City) FROM Employees

SELECT * FROM Employees WHERE TitleOfCourtesy = 'Dr.' OR TitleOfCourtesy = 'Mr.' -- IN ('Dr.','Mr.'  )

SELECT TOP 20 PERCENT * FROM Orders WHERE ShipCity = 'Bern' ORDER BY Freight DESC

SELECT COUNT(OrderID), CustomerID FROM Orders GROUP BY CustomerID HAVING COUNT(OrderID) > 10


--JOINS

SELECT * FROM Customers INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID

SELECT Customers.CompanyName, COUNT(Orders.OrderID) AS ORDERID FROM Customers JOIN Orders On Customers.CustomerID = Orders.CustomerID 
GROUP BY Customers.CompanyName


SELECT * FROM Customers LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
WHERE Orders.OrderID is NULL

SELECT * FROM Suppliers JOIN Products ON Suppliers.SupplierID = Products.ProductID
			            JOIN Categories ON Products.CategoryID = Categories.CategoryID

--1.
SELECT * FROM Products
SELECT * FROM [Order Details]
SELECT ProductName, COUNT([Order Details].Quantity) AS TOTAL FROM Products	
JOIN [Order Details] ON Products.ProductID = [Order Details].ProductID
GROUP BY ProductName

--2.
SELECT * FROM Orders
SELECT * FROM Customers

SELECT Orders.CustomerID , EmployeeID, Freight, City FROM Orders 
JOIN Customers ON Orders.CustomerID = Customers.CustomerID WHERE City like 'Torino'

--3
SELECT CompanyName, ProductName, COUNT(Customers.CustomerID) FROM [Order Details] JOIN Products ON [Order Details].ProductID = Products.ProductID
							JOIN Orders ON [Order Details].OrderID =Orders.OrderID
							JOIN Customers ON Orders.CustomerID = Customers.CustomerID
							GROUP By CompanyName, ProductName HAVING COUNT(Customers.CustomerID) > 2

--4
SELECT * FROM Employees

SELECT Employees.EmployeeID, LastName, FirstName, COUNT(OrderID), YEAR (Orders.OrderDate) FROM Orders 
				JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
				WHERE YEAR(OrderDate) LIKE '1996' GROUP BY Employees.EmployeeID, 
				LastName, FirstName ,YEAR (Orders.OrderDate)
--5.
SELECT Employees.EmployeeID, LastName, FirstName, COUNT(OrderID), YEAR (Orders.OrderDate), City, Country FROM Orders 
				JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
				WHERE YEAR(OrderDate) LIKE '1998' GROUP BY Employees.EmployeeID, 
				LastName, FirstName ,YEAR (Orders.OrderDate), City, Country
--6
SELECT * FROM Employees
SELECT Employees.EmployeeID, LastName, FirstName,Orders.OrderDate, COUNT(OrderID) FROM Orders 
			   JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
				WHERE HireDate BETWEEN '1998-01-01' AND '1998-07-31'
				GROUP BY Employees.EmployeeID, LastName, FirstName, Orders.OrderDate
--7
SELECT Employees.EmployeeID, LastName, FirstName,Orders.OrderDate, COUNT(OrderID) FROM Orders 
			   JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
				WHERE Orders.OrderDate BETWEEN '1997-01-01' AND '1997-06-30'
				GROUP BY Employees.EmployeeID, LastName, FirstName, Orders.OrderDate

--8.
SELECT ProductID, ProductName, CategoryName FROM Products JOIN Categories ON Products.CategoryID = Categories.CategoryID
						WHERE CategoryName LIKE 'Seafood' 
						GROUP BY ProductID, ProductName, CategoryName
--9.
SELECT [Order Details].ProductID,ProductName, MAX([Order Details].Quantity) AS TOTAL FROM Products	
                            JOIN [Order Details] ON Products.ProductID = [Order Details].ProductID
                            GROUP BY ProductName, [Order Details].ProductID