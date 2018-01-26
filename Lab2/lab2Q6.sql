Select Distinct A.VendorId,
A.VendorName,A.VendorContactFName+','+ A.VendorContactLName as Name
from Vendors as A JOIN Vendors as B
on (A.VendorID <> B.VendorID) 
and 
(A.VendorContactLName = B.VendorContactLName)
order by VendorID
