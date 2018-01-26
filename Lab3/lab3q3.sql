select AccountDescription,
count(I1.AccountNo) as LineItemCount,
sum(InvoiceLineItemAmount) as InvoiceSum
from GLAccounts G1 join InvoiceLineItems I1
on G1.AccountNo = I1.AccountNo
group by AccountDescription
having count(I1.AccountNo) < 10
order by LineItemCount desc;
