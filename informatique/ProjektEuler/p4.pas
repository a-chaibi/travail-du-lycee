program p4;
var
	i,j,k:integer;
	s:longint;
	max:boolean;
	palis:array[1..100000] of longint;
	fac:array[1..100000] of integer;
BEGIN
	k:=0;
	for i:=317 to 999 do
		begin
			for j:=317 to 999 do
				begin
					s:=i*j;
					if ((s mod 10 = s div 100000) and ((s mod 100) div 10 = (s div 10000) mod 10) and ((s mod 1000) div 100 = (s div 1000) mod 10)) then
						begin
							k:=k+1;
							palis[k]:=s;
							fac[k]:=i;
						end;
				end;
		end;
	for i:=1 to k do
		begin
			max:=true;
			for j:=1 to k do
				begin
					if palis[j]>palis[i] then
						max:=false;
				end;
			if max=true then
					writeln(fac[i], ' x ', trunc(palis[i]/fac[i]), ' = ', palis[i]);
		end;
END.
