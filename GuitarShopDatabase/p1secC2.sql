select p1.ProductName, p1.ListPrice
from Products p1 join Products p2
on p1.ProductID <> p2.ProductID 
where p1.ListPrice = p2.ListPrice
order by ProductName desc