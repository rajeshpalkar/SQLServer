create view InvoiceBasic as
select VendorName, InvoiceNumber, InvoiceTotal
from Vendors V join Invoices I
on V.VendorID = I.VendorID