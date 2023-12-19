-- 1

Select * 
From northwind.Products;

-- 2

-- Select 
-- ProductID,
-- ProductName,
-- UnitPrice

-- From northwind.Products;

-- 3

-- Select 
-- ProductID,
-- ProductName,
-- UnitPrice

-- From northwind.Products
-- Order by UnitPrice;


-- 4

Select 
*

From northwind.Products
Where UnitPrice < 7.50

-- 5
SELECT 
*
FROM northwind.Products
Where UnitsInStock > 100

-- 6
SELECT 
*
FROM northwind.Products
Where UnitsInStock > 100
Order by UnitPrice desc, ProductName


-- 7
select 
*
FROM northwind.Products
where UnitsInStock = 0 and UnitsOnOrder > 0
Order by ProductName

-- 8 

-- categories

-- 9 
select 
*
from northwind.categories
-- seafood id == 8

-- 10
select 
*
from northwind.products
where categoryId = 8
-- categoryID

-- 11
select 
Firstname, lastname
from northwind.employees


-- 12

select 
*
from northwind.employees
where title like "%manager%"


-- 13

select distinct title

from northwind.employees

-- 14

select 
*

from northwind.employees
where salary between 2000 and 2500

-- 15

select 
*

from northwind.suppliers


-- 16

select 
*
from northwind.products
where supplierId = 4