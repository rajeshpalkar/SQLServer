select AccountNo,AccountDescription 
from GLAccounts
where NOT EXISTS (Select Distinct InvoiceLineItems.AccountNo
from InvoiceLineItems
where GLAccounts.AccountNo=InvoiceLineItems.AccountNo)



