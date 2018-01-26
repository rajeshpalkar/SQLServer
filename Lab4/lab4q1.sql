Insert into InvoiceCopy (VendorID, InvoiceNumber, InvoiceTotal, PaymentTotal, CreditTotal, TermsID,
InvoiceDate, InvoiceDueDate) values
(32,'AX-014-027', 434.58, 0.00, 0.00, 2, '6/21/12','07/8/12')

select * from InvoiceCopy where VendorID = 32
