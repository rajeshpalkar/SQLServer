select cast(InvoiceDate as varchar(10)) VarcharCast,
convert(varchar(10),InvoiceDate,1) as VarcharConvertStyle1,
convert(varchar(10),InvoiceDate,10) as VarcharConvertStyle10,
cast(InvoiceDate as real) as RealCast
from Invoices