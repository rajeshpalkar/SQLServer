select InvoiceNumber, InvoiceTotal - CreditTotal - PaymentTotal as BalanceDue
from Invoices 
where InvoiceTotal - CreditTotal - PaymentTotal <> 0  
and InvoiceDueDate - getdate() < 30 

 



