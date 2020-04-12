program ladder2;
var
	i:byte;
	s,s1,s2:string;
BEGIN
s:='';
readln(s1);
readln(s2);
for i:=1 to length(s1) do
	begin
		if (s1[i]<>s2[i]) then s:=s+'1' else s:=s+'0';
	end;
writeln(s);
END.
