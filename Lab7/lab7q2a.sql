create view TOP10PaidInvoices as
select top 10 VendorName, max(InvoiceDate) as LastInvoice,
sum(InvoiceTotal)as SumOfInvoices
from Vendors V join Invoices I
on V.VendorID = I.VendorID
where InvoiceTotal - CreditTotal - PaymentTotal = 0
group by VendorName
order by sum(InvoiceTotal) desc