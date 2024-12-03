use work;
declare newCursor cursor for select * from task;
open newCursor;
fetch next from newCursor;
close newCursor;