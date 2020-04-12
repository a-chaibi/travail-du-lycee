program ladder9;
var
	s,i:byte;
	ch:string;
	o:boolean;
BEGIN
readln(ch);
s:=0;
for i:=1 to length(ch) do
	begin
		if (ch[i]='7') or (ch[i]='4') then s:=s+1;
	end;
str(s,ch);
o:=true;
for i:=1 to length(ch) do
	begin
		if (ch[i]<>'4') and (ch[i]<>'7') then
			begin
				o:=false;
				writeln('NO');			
				break;
			end;
	end;
if o then writeln('YES');
END.
