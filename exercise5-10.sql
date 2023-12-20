-- 1
INSERT INTO Northwind.Suppliers
VALUES('31', 'New Supplier Name', 'John Doe', 'Finance Director', '123 Main Street', 'Ste-Hyacinthe', 'Qubec', 'J2S 7S8', 'Canada', '(514) 555-2955', '(514) 555-2921', NULL);

-- 2
INSERT INTO Northwind.Products 
VALUES('78', 'Special Hamburg Style', '31', '1', '8 boxes', '10.5000', '25', '0', '12', 0);

-- 3

SELECT
ProductName, CompanyName
FROM Northwind.Products
JOIN Northwind.Suppliers
	ON Northwind.Products.SupplierID = northwind.Suppliers.SupplierID;


-- 4

UPDATE Northwind.Products
SET UnitPrice = UnitPrice * 1.15
WHERE ProductName = 'Special Hamburg Style';


-- 5 

SELECT 
ProductName, UnitPrice 
FROM Northwind.Products
WHERE SupplierId = '31';


-- 6 

DELETE FROM Northwind.Products
WHERE SupplierId = '31';


-- 7 
DELETE FROM Northwind.Products
WHERE SupplierId = '31';

-- 8
Select
*
FROM Northwind.Products;

-- 9 

SELECT 
*
FROM Northwind.Suppliers;

