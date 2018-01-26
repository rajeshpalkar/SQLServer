select Count(distinct OI.ProductID) as CountOfProducts, EmailAddress
from Customers C 
join Orders O
on C.CustomerID = O.CustomerID
join OrderItems OI
on O.OrderID = OI.OrderID
group by EmailAddress
having count(distinct OI.ProductID) > 1

