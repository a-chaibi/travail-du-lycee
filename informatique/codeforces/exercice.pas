program A631Div2;
var
	t,n,j,x,i,k:longword;
	a:array[1..100000] of longword;
	existe:boolean;
BEGIN
repeat
	readln(t);
until((t>=1) and (t<=5));
for j:=1 to t do
	begin
		repeat
			read(n, x);
		until((n>=1) and (x<=100));
		for i:=1 to n do				
			read(a[i]);
		i:=0;
		while(x<>0) do
			begin 
				i:=i+1;
				existe:=false;
				for k:=1 to n do
					begin
						if (a[k]=i) then 
							begin
								existe:=true;
								break;
							end;
					end;
				if existe=false then
					x:=x-1;
			end;
		existe:=false;
		for k:=1 to n do
			begin
				if (a[k]=i+1) then 
					begin
						existe:=true;
						writeln(i+1);
						break;
					end;

			end;
		if existe=false then
			writeln(i);
	end;

END.
