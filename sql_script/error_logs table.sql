CREATE TABLE Error_Logs_LEGOINVENTORY(ID INT IDENTITY, MachineName varchar(200), PackageName varchar(200), TaskName varchar(200), ErrorCode int,
ErrorDescription varchar(max), Dated datetime) 
go

select * from Error_Logs_LEGOINVENTORY