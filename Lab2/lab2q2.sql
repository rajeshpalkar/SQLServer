select InvoiceNumber As Number, InvoiceTotal As Total,
PaymentTotal+CreditTotal as Credits
from Invoices
where InvoiceTotal<=500;