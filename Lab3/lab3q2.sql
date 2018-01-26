select VendorName,count(InvoiceId) as InvoiceCount,sum(InvoiceTotal) as InvoiceSum
from Vendors V1 join Invoices I1
on V1.VendorID = I1.VendorID
group by VendorName 
order by InvoiceCount;