select DISTINCT DefaultAccountNo,VendorName,VendorZipCode,AccountDescription
from Vendors JOIN GLAccounts
on Vendors.DefaultAccountNo = GLAccounts.AccountNO
order by VendorName Desc;
