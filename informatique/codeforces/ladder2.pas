program ladder2;
var
	i,j,k:byte;
	x,y:integer;
BEGIN
for j:=1 to 5 do
	begin
		for i:=1 to 5 do
			begin
				read(k);
				if (k=1) then
					begin
						x:=i;
						y:=j;
					end;
			end;
	end;
	writeln(abs(x-3)+abs(y-3));
END.
