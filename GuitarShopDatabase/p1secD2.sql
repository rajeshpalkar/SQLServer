create view ProductSummery as
select ProductName,Count(ProductName) as OrderCount,
sum(FinalPrice*Quantity) as OrderTotal 
from OrderItemProducts
group by ProductName
