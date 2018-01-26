select  VendorName, 'CA' as VendorState
from Vendors
Where VendorState='CA'
Union
select VendorName, 'Outside CA' as VendorState
from Vendors
Where VendorState<>'CA'
order by VendorName