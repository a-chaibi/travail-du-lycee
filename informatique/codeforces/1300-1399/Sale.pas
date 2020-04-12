program Sale;
var
	i,j,n,m:byte;
	a:array[1..100] of integer;
	k,max,gain:integer;
BEGIN
read(n);readln(m);
j:=0;
gain:=0;
for i:=1 to n do 
	begin
		read(k);
		if k<0 then 
			begin
				j:=j+1;
			 	a[j]:=k;
			end;
	end;
if j=0 then writeln(0) else if j=1 then writeln(abs(a[1])) else begin
for i:=1 to m do 
	begin
		max:=0;
		for k:=1 to j do
			begin
				if a[k]<max then 
				begin 
					max:=a[k]; a[k]:=0;
				end;
			end;
		gain:=gain+abs(max);
	end;
	writeln(gain);
end;
END.
