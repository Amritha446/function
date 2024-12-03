use work;
select * from task;

CREATE PROCEDURE SelectAll AS SELECT * FROM task GO;
exec SelectAll;

create procedure SelectOne @name nvarchar(30) as select * from task where name = @name;
exec SelectOne @name='aparna';