Declare @ProductCount int
set @ProductCount = (select count(ProductName) from Products)
if @ProductCount >= 0
print 'The number of products is greater than or equal to 7'
else print 'Number of products is less than 7'
