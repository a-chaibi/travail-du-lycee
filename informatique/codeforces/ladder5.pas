program ladder5;
var
x,y:longword;
a,b,c,d:byte;
BEGIN
readln(y);
for x:=y+1 to 90000000 do
	begin
		a:=x div 1000;
		b:=(x div 100) mod 10;
		c:=(x div 10) mod 10;
		d:=x mod 10;
		if (a<>b) and (a<>c) and (a<>d) and (b<>c) and (b<>d) and (c<>d) then
			begin
				writeln(x);
				break;
			end;
	end;
END.
