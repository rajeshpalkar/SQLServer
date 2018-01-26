if OBJECT_ID('FirstInvoice_View') is NOT NULL
drop view FirstInvoice_View

go
create view FirstInvoice_View as
select VendorID, min(InvoiceDate) as FirstInvoiceDate, sum(InvoiceTotal) as SumofInvoices
from Invoices 
group by VendorID
