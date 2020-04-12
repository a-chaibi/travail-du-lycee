program FancyFence;
var
	a,t,n,i:byte;
BEGIN
readln(t);
for i:=1 to t do
	begin
		readln(a);
		if (frac(360/(180-a))=0) then writeln('YES') else writeln('NO');
	end;
END.
