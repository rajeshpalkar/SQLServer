select InvoiceNumber,Rank() over (order by InvoiceTotal - CreditTotal - PaymentTotal Desc) as BalanceRank ,
InvoiceTotal - CreditTotal - PaymentTotal as BalanceDue
from Invoices 
where InvoiceTotal - CreditTotal - PaymentTotal <> 0 
and  
InvoiceDueDate - getdate() < 30