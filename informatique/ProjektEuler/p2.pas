program p2;
var
	a,b,c,s:longint;
begin
	a:=1;
	b:=2;
	c:=0;
	s:=2;
	repeat
		begin
			c:=a+b;
			if c mod 2=0 then
				s:=s+c;
			a:=b;
			b:=c;
		end;
	until(c>4000000);
	writeln(s);
end.
