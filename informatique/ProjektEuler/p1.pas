program p1;
var
	i,s:longint;
begin
	s:=0;
	for i:=1 to 999 do
		begin
			if i mod 3=0 then
				s:=s+i;
			if i mod 5=0 then
				s:=s+i;
			if i mod 15=0 then
				s:=s-i;
		end;
	writeln('s= ', s);
end.
