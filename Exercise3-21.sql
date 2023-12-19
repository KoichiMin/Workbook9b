select
*
from northwind.products;

-- 1

select 
productName, UnitPrice

from northwind.products
where UnitPrice = (select max(UnitPrice)
						from northwind.products);
                        
-- 2

select 
orderId, shipName, shipAddress 

from northwind.Orders
where shipVia =(select
ShipperId
from northwind.shippers
where CompanyName =  'Federal Shipping'


);

select 
*
from northwind.shippers;

-- 3
SELECT 
OrderID
 FROM northwind.`Order Details`
 where ProductID = (
 select
 ProductId
 from 
 northwind.Products
 where 
 ProductName = 'Sasquatch Ale'
 );
 
 -- 4
 
 select
 firstName, lastName
 from 
 Employees
 where EmployeeID = (
	select 
    EmployeeID
    from Orders
    where OrderId = 10266
 );
 
 
 -- 5
 
 select
 CompanyName
 from Customers
 where CustomerId = (
	select 
    CustomerId
    from Orders
    where OrderId = 10266
    
 );
 
 
 
 
 