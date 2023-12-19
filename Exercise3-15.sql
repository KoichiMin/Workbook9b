select 
*
from northwind.products

-- 1
select 
Count(*)
from northwind.suppliers

-- 2

select
sum(salary)
from northwind.employees

-- 3

select 
min(unitPrice)

from northwind.products

-- 4

select
avg(unitPrice)

from northwind.products

-- 5
select
max(unitPrice)
from northwind.products

-- 6

select 
supplierID, count(productName)

from northwind.products
group by supplierID

-- 7

select 
categoryId, avg(Unitprice) as averagePrice

from northwind.products
group by categoryId

-- 8

select
supplierId, count(productName)

from northwind.Products
group by supplierId
having count(productName) > 4 

-- 9

select 
ProductID, productName, unitPrice * unitsInStock as inventoryValue

from northwind.products
order by inventoryValue desc, productName

