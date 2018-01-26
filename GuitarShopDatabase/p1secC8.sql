select 
ListPrice,
cast(ListPrice as decimal(10,1)) as DecimalVersion,
convert(int,ListPrice) as ConvertFunction,
cast(ListPrice as int) as CastToInt
from Products
