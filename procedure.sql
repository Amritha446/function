use work;
select * from task;

CREATE PROCEDURE SelectAll AS SELECT * FROM task GO;
exec SelectAll;

create procedure SelectOne @name nvarchar(30) as select * from task where name = @name;
exec SelectOne @name='aparna';

declare @y date;
set @y = getdate();

SELECT name,ASCII(name) AS NumCodeOfFirstChar
FROM task;
SELECT COUNT(name) AS NumberOfname FROM task;