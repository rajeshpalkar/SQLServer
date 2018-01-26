select distinct p1.DiscountPercent,p1.ProductName
from Products p1 
where p1.DiscountPercent 
NOT IN ( select p2.DiscountPercent
from Products p2
where p1.ProductName <> p2.ProductName )
order by ProductName

