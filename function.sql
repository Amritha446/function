create table task(id int,name varchar(20),dob date);
insert into task values(3,'gowri','2023-02-19');
select * from task;

create function Age_calculation(@Age date)
returns int 
begin
    declare @TodaysDate date;
    set @TodaysDate = getdate();
    RETURN YEAR(@TodaysDate) - YEAR(@Age);
END 


select id,name,dob,dbo.Age_calculation(dob) as Age from task;