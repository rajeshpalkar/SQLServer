select AccountNo, sum(InvoiceLineItemAmount) as TotalAmount
from InvoiceLineItems 
group by AccountNo with rollup;