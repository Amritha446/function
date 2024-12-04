use work;
declare newCursor cursor for select * from task;
open newCursor;
while @@FETCH_STATUS = 0
begin
fetch next from newCursor;
end;
close newCursor;
select * from task;