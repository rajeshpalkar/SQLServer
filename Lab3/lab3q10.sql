select VendorName,InvoiceNumber,InvoiceTotal,InvoiceDate
from Vendors v1 join Invoices i1
on v1.VendorID = i1.VendorID
and i1.InvoiceDate in (select min(InvoiceDate) from Invoices 
where VendorID = v1.VendorID)
order by i1.InvoiceDate