program ladder1;
var
	n,i:integer;
	sx,sy,sz,x,y,z:integer;
BEGIN
readln(n);
sx:=0;
sy:=0;
sz:=0;
for i:=1 to n do
	begin
		read(x,y,z);
		sx:=sx+x;
		sy:=sy+y;
		sz:=sz+z;
	end;
if (sx<>0) or (sy<>0) or (sz<>0) then writeln('NO')
else writeln('YES');
END.
