program p3;
var
	i,j:longword;
	k:integer;
	prime:boolean;
BEGIN
	for i:=1 to trunc(sqrt(600851475143)) do
		begin
			prime:=true;
				for j:=1 to trunc(sqrt(i)) do
					begin
						if ((j<>1) and (j<>i) and (i mod j=0)) then
							prime:=false;
					end;
			if (i<>1) and (prime=true) and (600851475143 mod i=0) then
				begin
					writeln(i);
				end;
		end;	
END.
