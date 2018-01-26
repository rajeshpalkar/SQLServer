  select OrderID,OrderDate,'NOT SHIPPED' as ShipStatus
         from Orders
         where ShipDate is NULL  
Union
  select OrderID,OrderDate,'SHIPPED' as ShipStatus
         from Orders
         where ShipDate is NOT NULL
order by OrderDate 
   

