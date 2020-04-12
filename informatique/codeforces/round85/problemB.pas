program problemB;
var
	T,j:integer;
	n,i:byte;
	p,c:array[1..100] of integer;
	yes:boolean;
BEGIN
readln(T);
for j:=1 to T do
	begin 
		readln(n);
		yes:=true;
		for i:=1 to n do
			begin
				read(p[i], c[i]);
				if (p[i]<c[i]) then yes:=false;
			end;
		for i:=1 to n-1 do
			begin
				if ((p[i+1]<p[i]) or (c[i+1]<c[i]) or (p[i+1]-p[i]<c[i+1]-c[i])) then
					begin
						yes:=false;
						break;
					end;
			end;
		if yes then
			begin
				writeln('YES');
			end
		else
			writeln('NO');
	end;
END.
