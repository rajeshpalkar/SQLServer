select VendorName,VendorCity,VendorState 
from Vendors 
where VendorID 
NOT IN (select v1.VendorID 
from Vendors v1 join Vendors v2
on v1.VendorID <> v2.VendorID
where v1.VendorCity = v2.VendorCity and v1.VendorState = v2.VendorState)
