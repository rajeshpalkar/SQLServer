declare @FirstTable varchar(20)

select @FirstTable = min(name)
from sys.tables
where name <> 'dtproperties' and name <> 'sysdiagrams'

exec ('select count(*) as CountOf'+ @FirstTable+' '+'from'+' '+ @FirstTable )


