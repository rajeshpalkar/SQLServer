begin transaction 

update Invoices set VendorID = 123 where VendorID = 122

delete Vendors where VendorID = 122

update Vendors set VendorName = 'FedUp' where VendorID = 123

commit transaction 

