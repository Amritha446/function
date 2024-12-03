use work;
create table employe(employeeId int primary key,firstName varchar(20),lastName varchar(20),
position varchar(50),dateHire date);
create table audit(logId int identity(1,1) primary key,action varchar(50),employeeId int,firstName varchar(20),
lastName varchar(20),actionDate datetime);

create trigger afterInsert on employe after insert as 
begin 
declare @employeeId int,@firstName varchar(20),@lastName varchar(20);
select @employeeId=employeeId,@firstName=firstName,@lastName=lastName from inserted;
insert into audit(action,employeeId,firstName,lastName,actionDate)
values('insert',@employeeId,@firstName,@lastName,getdate());
end;

insert into employe(employeeId,firstName,lastName,position,dateHire) values(1,'amritha','ar','hi','10-02-2017');

select * from audit;