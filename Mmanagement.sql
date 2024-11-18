CREATE DATABASE Mmanagerment
USE Mmanagerment
CREATE TABLE Employees(
	EmID int IDENTITY(1,1) PRIMARY KEY,
	name nvarchar(50) NOT NULL,
	DOB date CHECK(YEAR(GETDATE())-YEAR(DOB)>=18),
	Phone char(12) UNIQUE,
	Addr nvarchar(50) DEFAULT N'Hồ Chí Minh'
)

CREATE TABLE Department(
	DepID int Primary Key,
	DepName nvarchar(50)
)

ALTER TABLE Employees 
ADD DepID int FOREIGN KEY REFERENCES Department(DepID)

ALTER TABLE Department
ADD ManagerID int FOREIGN KEY REFERENCES  Employees(EmID)

ALTER TABLE Employees
ADD SupervisorID int FOREIGN KEY REFERENCES Employees(EmID)

CREATE TABLE PROJECT(
	ProId int NOT NULL,
	Proname nvarchar(50)
)

ALTER TABLE PROJECT 
ADD CONSTRAINT pri1 PRIMARY KEY (ProId)

ALTER TABLE PROJECT 
ADD DepID int FOREIGN KEY REFERENCES Department(DepID)

-- Câu lệnh Instert data in list
InSERT INTO Department VALUES (1, N'KẾ TOÁN', 1),(2, N'Nhận Sự', 2),(3, N'CNNT',3)


InSERT INTO Employees (name, Addr, Phone) Values (N'hòa',N'Biên hòa', 2313123 ),
												(N'Cường', N'Bình Dương',3243433)

SELECT * FROM Department
SELECT * FROM Employees


USE Northwind

UPDATE Employees SET TitleOfCourtesy = 'ÔNG'
WHERE TitleOfCourtesy LIKE 'Mr.'

SELECT * FROM Employees

--DELETE
DELETE FROM 
Customers WHERE CustomerID IN(
SELECT c.CustomerID FROM Customers c LEFT JOIN 
Orders o ON c.CustomerID = o.CustomerID WHERE o.OrderID IS NULL )

