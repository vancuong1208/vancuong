USE Northwind -- chọn để chơi vs 1 thùng chứa data nào đó 
			-- tại 1 thời điểm chơi vs 1 thùng chứa data
SELECT * FROM Customers 

SELECT * FROM Employees

------------------------------------------------
-- Lí Thuyết
-- 1. DBE nó cung cấp câu lệch SElECT dùng để
   -- in ra màn hình 1 cái gì đó  ~~~printf() -- soout ;
   -- in ra dữ liệu có trong table (hàng/ cột ) !!!!!!!!! cần tập trung cái này 
   -- dùng cho mục đích nào thì kết quả hiển thị luôn là 1 table 
-------------------------------------------------

-- 1. Hôm nay là ngày bao nhiêu ??
SELECT GETDATE()

SELECT GETDATE() as [Hôm nay là ngày]

-- 2. Hom nay tháng mấy ??
SELECT  year (GETDATE())
SELECT  month (GETDATE()) as [Bây giờ tháng mấy]
-- 3. Trị tuyệt đối của -5 là mấy 
SELECT ABS(-5) as [Trị truyệt đối cũa -5 là máy]

--- 4. 5 + 5 là mấy
SELECT 5 + 5  as [Bao nhiêu]

-- 5. In ra tên của minh 
SELECT N'VÕ VĂN CƯỜNG' AS [MY FULLNAME IS]

SELECT N'VÕ' + N'VĂN CƯỜNG' AS [MY FULLNAME IS]  -- Cộng giống java

--6. tính tuổi
SElECT year (GETDATE()) - 2004

SELECT N'VÕ' + N'VĂN CƯỜNG'  +  CONVERT(NVARCHAR, YEAR(GETDATE()) - 2004 ) +  'year old' as [MY Profile]
SELECT N'VÕ' + N'VĂN CƯỜNG'  +  CONVERT(NVARCHAR, YEAR(GETDATE()) - 2004 ) +  'year old' as MYPROFILE
-- nó đang là cái chuỗi nên phải chuyển thành convert.

-- 7 PHÉP NHÂN
SELECT 10 * 10 AS RESULT
