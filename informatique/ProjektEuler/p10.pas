program p10;
var
	i,j,s:longword;
	prime:boolean;
BEGIN
	i:=1;
	s:=0;
	while(i<2000000) do
		begin
			i:=i+1;
			prime:=true;
			for j:=1 to trunc(sqrt(i)) do
				begin
					if ((j<>1) and (j<>i) and (i mod j=0)) then
						begin
							prime:=false;
							break;
						end;
				end;
			if (prime=true)  then
				begin
				s:=s+i;
				writeln(i);
			end;
		end;	
	writeln(s);
END.
