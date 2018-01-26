select C.CategoryName, count(ProductID) ProductCount, Max(ListPrice) as MostExpensive
from Categories C join Products P 
on C.CategoryID = P.CategoryID
group by CategoryName
order by ProductCount desc
