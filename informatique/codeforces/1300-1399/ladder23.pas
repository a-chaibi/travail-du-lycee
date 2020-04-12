program JeffandDigits;
var
	cinq,zero,k:integer;
	n,i:integer;
	s:string;
BEGIN
cinq:=0;
zero:=0;
s:='';
readln(n);
for i:=1 to n do
	begin
		read(k);
		if (k=5) then cinq:=cinq+1;
		if (k=0) then zero:=zero+1;
	end;
if ((cinq div 9) <> 0) and (zero<>0) then 
	begin
		for i:=1 to 9 * (cinq div 9) do
			begin
				s:=s+'5';		
			end;
		for i:=1 to zero do
			begin
				s:=s+'0';
			end;
		writeln(s);
	end
else
	begin
		if zero<>0 then writeln(0) else writeln(-1);
	end;
END.
