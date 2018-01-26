select FirstName, LastName, Line1, City,State, ZipCode
from Customers C join Addresses A
on C.CustomerID = A.CustomerID
where A.AddressID = C.ShippingAddressID