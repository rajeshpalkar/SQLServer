begin transaction

insert into InvoiceArchive select Invoices.*
from Invoices left join InvoiceArchive
on Invoices.InvoiceID = InvoiceArchive.InvoiceID
where Invoices.InvoiceTotal - Invoices.CreditTotal -Invoices.PaymentTotal = 0
and
InvoiceArchive.InvoiceID is NULL 

delete Invoices
where InvoiceID IN (select InvoiceID from InvoiceArchive)

commit transaction