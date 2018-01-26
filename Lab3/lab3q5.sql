select VendorName, count(distinct I1.AccountNo) as AccountNo
from InvoiceLineItems I1 
join Invoices I2
on I1.InvoiceID = I2.InvoiceID
join Vendors V1
on V1.VendorID = I2.VendorID
group by VendorName
having count(distinct I1.AccountNo) > 1

