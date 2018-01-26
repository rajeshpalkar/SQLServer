go
create proc spDateRange
@DateMin varchar(50),
@DateMax varchar(50)
as

if @DateMin is null
throw 50001,'Min date is NULL',1;

if @DateMax is null
throw 50001,'Max date is NULL',1;


if (isdate(@DateMin) = 0 or isdate(@DateMax) = 0)
throw 50001,'Invalid format use yy/mm/dd',1;


if (cast(@DateMin as datetime) > cast(@DateMax as datetime))
throw 50001,'DateMin should be earlier than DateMax',1;

select InvoiceNumber, InvoiceDate,
 InvoiceTotal, InvoiceTotal - CreditTotal - PaymentTotal as Balance
 from Invoices 
 where InvoiceDate between @DateMin and @DateMax
 order by InvoiceDate

