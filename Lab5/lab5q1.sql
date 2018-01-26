select VendorContactFName + + Left(VendorContactLName, 1) +'.' as Contact,
Right(VendorPhone,8) as Phone
from Vendors
where SUBSTRING(VendorPhone,2,3) = 559
order by VendorContactFName 
