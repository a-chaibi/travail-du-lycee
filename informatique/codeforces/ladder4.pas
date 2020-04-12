program ladder4;
var
	b,n:string; (*Borze code*)
	i:integer;
BEGIN
readln(b);
n:='';
i:=0;
while (i<>length(b)) do
	begin
		i:=i+1;
		if b[i]='.' then n:=concat(n,'0');
		if (b[i]='-') and (b[i+1]='.') then
			begin
				n:=concat(n,'1');
				i:=i+1;
			end;
		if (b[i]='-') and (b[i+1]='-') then
			begin
				n:=concat(n,'2');
				i:=i+1;
			end;
	end;
writeln(n);
END.
