create login AAaron with password = 'aaa999',
default_database = AP
create user Aaron for login AAaron

exec sp_addrolemember PaymentEntry, Aaron