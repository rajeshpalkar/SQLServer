create role PaymentEntry
grant update on Invoices to PaymentEntry
grant update,insert on InvoiceLineItems to PaymentEntry

exec sp_addrolemember db_datareader, PaymentEntry