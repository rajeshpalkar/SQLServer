select VendorName, FunctionTable.*
from Vendors v join Invoices i
on v.VendorID = i.VendorID
join dbo.fnDateRange('12/10/15','12/20/15') as FunctionTable
on i.InvoiceNumber = FunctionTable.InvoiceNumber