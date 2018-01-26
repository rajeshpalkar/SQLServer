go

create function fnUnpaidInvoiceID()
returns int

begin
   return(select min(InvoiceID)
   from Invoices
   where InvoiceTotal - CreditTotal - PaymentTotal > 0 and
   InvoiceDueDate = (select min(InvoiceDueDate) 
   from Invoices 
   where InvoiceTotal - CreditTotal - PaymentTotal > 0))
end