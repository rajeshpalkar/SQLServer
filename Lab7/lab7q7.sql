if OBJECT_ID('tempdb..#FirstInvoice') is NOT NULL
drop table #FirstInvoice

select VendorID, min(InvoiceDate) as FirstInvoiceDate
into #FirstInvoice
from Invoices
group by VendorID

select VendorName, FirstInvoiceDate, InvoiceTotal
from Invoices I join #FirstInvoice FI
on ( I.VendorID = FI.VendorID and I.InvoiceDate = FI.FirstInvoiceDate)
join Vendors V
on I.VendorID = V.VendorID
order by VendorName,FirstInvoiceDate
