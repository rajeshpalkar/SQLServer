begin try
exec spDateRange '2015-12-20','2015-12-10'
end try

begin catch
print 'Error Number:  ' + convert(varchar(20), error_number());
print 'Error Message:  ' + convert(varchar(50), error_message());
end catch