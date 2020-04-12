program dragons;
var
	s,n,i,j,o:integer;
	x,y:array[1..100000] of integer;
	ouf:boolean;
BEGIN
read(s);
readln(n);
for i:=1 to n do
	begin
		read(x[i]);readln(y[i]);
	end;
for i:=1 to n do
	begin
		for j:=i to n do
			begin
				if x[j]<x[i] then
					begin
						o:=x[i];
						x[j]:=o;
						x[i]:=x[j];
						o:=y[i];
						y[j]:=o;
						y[i]:=y[j];
					end;
			end;
	end;
ouf:=false;
for i:=1 to n do
	begin
		if s>x[i] then s:=s+y[i] else begin ouf:=true; break; end;
	end;
	if ouf then writeln('NO') else writeln('YES');	
END.
