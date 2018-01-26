Delete VendorCopy
where VendorState NOT IN 
(Select Distinct VendorState from VendorCopy vc join InvoiceCopy ic
on vc.VendorID = ic.VendorID )