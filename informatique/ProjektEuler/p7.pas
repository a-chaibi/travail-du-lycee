program p7;
var
	i,j:longword;
	k:integer;
	prime:boolean;

BEGIN
	k:=0;
	i:=1;
	repeat
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
				k:=k+1;
		end;	
	until(k=10001);
	writeln(i);
END.
