create view OrderItemProducts as
select O.OrderID, OrderDate, TaxAmount, ShipDate,
ItemPrice, DiscountAmount,ItemPrice-DiscountAmount as FinalPrice, 
Quantity, (ItemPrice-DiscountAmount) * Quantity as ItemTotal,
Productname
from OrderItems OI join Products P
on OI.ProductID = P.ProductID
join Orders O 
on
O.OrderID = OI.OrderID