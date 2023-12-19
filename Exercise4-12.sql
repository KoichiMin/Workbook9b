
-- 1

select 
ProductId,
ProductName, 
UnitPrice,
CategoryName
from 
Products
Join Categories
	on Products.CategoryId = Categories.CategoryID
ORDER BY categoryName, ProductName;


-- 2

SELECT
ProductId, 
ProductName,
UnitPrice,
CompanyName
FROM
Products
Join Suppliers
	ON Products.SupplierID = Suppliers.SupplierID
WHERE UnitPrice > 75
ORDER BY productName;

-- 3

SELECT 
ProductId,
ProductName,
UnitPrice,
CategoryName,
CompanyName
FROM 
Products
JOIN Categories
	ON Products.CategoryId = Categories.CategoryID
JOIN Suppliers
	ON Products.SupplierID = Suppliers.SupplierID
ORDER BY ProductName;

-- 4 

SELECT
ProductId,
UnitPrice,
CategoryName
FROM 
Products
JOIN Categories
	ON Products.CategoryId = Categories.CategoryID
WHERE UnitPrice = (
SELECT
max(UnitPrice)
FROM
Products

);


-- 5

SELECT 
OrderId,
ShipName,
ShipAddress,
CompanyName

FROM 
Orders
JOIN Shippers
	on Orders.ShipVia = Shippers.ShipperId
WHERE Orders.ShipCountry = 'Germany';

-- 6

SELECT 
Orders.OrderID,
Orders.OrderDate,
Orders.ShipName,
Orders.ShipAddress
FROM 
northwind.`Order Details`
JOIN Products
	ON	`Order Details`.ProductID = Products.ProductID 
JOIN Orders
	ON	`Order Details`.OrderID = Orders.OrderID
WHERE ProductName = 'Sasquatch Ale';




