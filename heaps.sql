select sys.schemas.name + '.' + sys.tables.name TableName 
from  sys.tables  
join sys.schemas ON sys.tables.schema_id = sys.schemas.schema_id 
join sys.indexes ON sys.tables.object_id = sys.indexes.object_id 
where sys.indexes.type = 0
order by TableName
