go
create schema rajesh
go
alter schema rajesh transfer dbo.ContactUpdates
alter user Aaron with default_schema = rajesh
grant select,insert,delete,update,execute
on schema:: rajesh
to Aaron