select InvoiceID,PaymentDate,InvoiceTotal-(PaymentTotal + CreditTotal) as Balance
from Invoices
where NOT((PaymentDate is NULL and (InvoiceTotal-(PaymentTotal+CreditTotal)) <> 0)
or (PaymentDate is NOT NULL and (InvoiceTotal-(PaymentTotal+CreditTotal)) = 0));