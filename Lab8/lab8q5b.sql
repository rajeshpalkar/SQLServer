select VendorName, InvoiceNumber,
InvoiceDueDate, InvoiceTotal - CreditTotal - PaymentTotal as Balance
from Vendors v join Invoices i
on v.VendorID = i.VendorID
where InvoiceID = dbo.fnUnpaidInvoiceID()