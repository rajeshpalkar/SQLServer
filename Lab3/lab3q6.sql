select InvoiceNumber,InvoiceTotal from Invoices
where PaymentTotal > (select AVG(PaymentTotal) from Invoices)
