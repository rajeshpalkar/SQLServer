select DISTINCT GLAccounts.AccountNo, AccountDescription
from GLAccounts Left outer Join InvoiceLineItems
on GLAccounts.AccountNo = InvoiceLineItems.AccountNo
where InvoiceLineItems.AccountNo is NULL
order by GLAccounts.AccountNo

select DISTINCT AccountNo, AccountDescription
from GLAccounts Left outer Join Vendors
on GLAccounts.AccountNo = Vendors.DefaultAccountNo
where Vendors.DefaultAccountNo is NULL
order by AccountNo

select distinct AccountNo from GLAccounts order by AccountNo
select * from vendors order by DefaultAccountNo
select distinct AccountNo from InvoiceLineItems order by AccountNo