program problemA.pas;
var
	t,n,i,j,k,p:longint;
	a:array[1..100000] of longint;
	Delta,o,a1,a2:longint;
BEGIN
readln(t);
for p:=1 to t do
	begin
		readln(n);
		for j:=1 to n-1 do read(a[j]); readln(a[n]);
		Delta:=a[1]-a[2];
		for j:=1 to n-1 do
			begin
				for k:=j+1 to n do
					begin
						if abs(a[k]-a[j])<Delta then
							begin
								Delta:=abs(a[k]-a[j]);
								a1:=j;
								a2:=k;
							end;
					end;
			end;
	o:=a[a1];
	a[a1]:=a[1];
	a[1]:=o;
	o:=a[a2];
	a[a2]:=a[2];
	a[2]:=o;
	for i:=1 to n-2 do
		begin
			j:=i+2;
			while ((abs(a[i+2]-a[i+1])<abs(a[i+1]-a[i])) and (j<>n)) do
				begin
					j:=j+1;
					o:=a[j];
					a[j]:=a[i+2];
					a[i+2]:=o;
				end;
			writeln('wehlet');
		end;
	for i:=1 to n-1 do write(a[i], ' ');writeln(a[n]);
	end;
END.
