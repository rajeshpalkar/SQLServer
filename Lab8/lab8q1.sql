go 
create proc spBalanceRange
@VendorVar varchar(50) = '%',
@BalanceMin money = 0,
@BalanceMax money = 0
as 
if @BalanceMax = 0
   begin
   select VendorName,InvoiceNumber, InvoiceTotal - CreditTotal - PaymentTotal as Balance
   from Vendors v join Invoices i
   on v.VendorID = i.VendorID
   where VendorName like @VendorVar and
   (InvoiceTotal - CreditTotal - PaymentTotal) > 0 and
   (InvoiceTotal - CreditTotal - PaymentTotal) >= @BalanceMin
   order by Balance
   end;
else
   begin
   select VendorName,InvoiceNumber, InvoiceTotal - CreditTotal - PaymentTotal as Balance
   from Vendors v join Invoices i
   on v.VendorID = i.VendorID
   where VendorName like @VendorVar  and
   (InvoiceTotal - CreditTotal - PaymentTotal) > 0 and
   (InvoiceTotal - CreditTotal - PaymentTotal) between @BalanceMin and @BalanceMax
   order by Balance 
   end;