declare @TotalInvoiceDue money

select @TotalInvoiceDue = sum(InvoiceTotal-CreditTotal-PaymentTotal)
from Invoices
where InvoiceTotal-CreditTotal-PaymentTotal > 0

if @TotalInvoiceDue < 10000
print 'Balance due is less than $10,000.00'
else
select VendorName, InvoiceNumber,
InvoiceDueDate ,InvoiceTotal-CreditTotal-PaymentTotal as Balance
from Invoices I join Vendors V
on I.VendorID = V.VendorID
where InvoiceTotal-CreditTotal-PaymentTotal > 0
order by InvoiceDueDate

