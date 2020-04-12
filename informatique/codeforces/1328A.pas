program p1328A;
var
	t,i:longint;
	a,b:longword;
	ch,ch1:string;
	e:byte;
BEGIN
repeat
	readln(t);
until((t>=1) and (t<=10000));
for i:=1 to t do
	begin
		repeat
			readln(ch);
			ch1:=copy(ch,1,pos(' ',ch)-1);
			delete(ch,1,pos(' ',ch));
			val(ch1,a,e);
			val(ch,b,e);
		until((a>=1)and(b<=1000000000));
		if (a mod b=0) then
			begin
				writeln(0);
			end
		else
				writeln(b - a mod b);
	end;
END.
