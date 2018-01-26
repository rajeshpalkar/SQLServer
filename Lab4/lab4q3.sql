Update InvoiceCopy
set TermsID = 2 
where VendorID IN
(Select VendorID 
from VendorCopy
where DefaultTermsID = 2)