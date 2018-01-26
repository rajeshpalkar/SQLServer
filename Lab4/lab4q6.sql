select cast(InvoiceTotal as decimal(10,2)) as DecimalCasting,
cast(InvoiceTotal as varchar(10)) as VarcharCasting,
convert(decimal(10,2),InvoiceTotal) as DecimalConvert,
convert(varchar(10),InvoiceTotal,1) as VarcharConvert
from Invoices