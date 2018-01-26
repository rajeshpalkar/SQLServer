select  case 
		 when grouping (AccountDescription) = 1 then '*ALL*'
		 else AccountDescription
		 end as Account,
	    case
		 when grouping(VendorState) = 1 then '*ALL*'
		 else VendorState
		 end as State,
Sum(InvoiceLineItemAmount) as LineItemSum
from GLAccounts join InvoiceLineItems
	on GLAccounts.AccountNo = InvoiceLineItems.AccountNo
	join Invoices
	on InvoiceLineItems.InvoiceID = Invoices.InvoiceID
    join Vendors
	on Invoices.VendorID = Vendors.VendorID
group by AccountDescription,VendorState with CUBE
