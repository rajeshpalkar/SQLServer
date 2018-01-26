select VendorName, FirstInvoiceDate, InvoiceTotal
from Invoices I join FirstInvoice_View FIV
on (I.VendorID = FIV.VendorID and I.InvoiceDate = FIV.FirstInvoiceDate)
join Vendors V
on V.VendorID = I.VendorID
order by VendorName, FirstInvoiceDate