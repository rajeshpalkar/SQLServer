select sum(unpaid) as TotalSum
from ( select max (InvoiceTotal) as unpaid
from Invoices I1 join Vendors V1
on I1.VendorID = V1.VendorID
where InvoiceTotal-PaymentTotal - CreditTotal > 0
group by V1.VendorID) s