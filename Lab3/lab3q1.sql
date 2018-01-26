select top 5 VendorName,Sum(PaymentTotal) as PaymentSum
from Vendors V1 join Invoices I1
on V1.VendorID = I1.VendorID
group by VendorName
order by PaymentSum Desc;