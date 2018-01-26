alter table Invoices
add check ((PaymentDate is NULL and PaymentTotal = 0) or
(PaymentDate is NOT NULL and PaymentTotal > 0 )),
check((PaymentTotal + CreditTotal) <= InvoiceTotal)