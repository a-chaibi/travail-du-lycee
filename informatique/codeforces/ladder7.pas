program ladder7;
var
	s:string;
	i,j:byte;
BEGIN
readln(s);
j:=0;
for i:=1 to length(s) do
	begin
		if(s[i] in ['A'..'Z']) then j:=j+1;
	end;
i:=0;
if (j<(length(s) div 2) + 1) then
	begin
		while (j<>0) do
			begin
				i:=i+1;
				if s[i] in ['A'..'Z'] then
					begin
						s[i]:=char(ord(s[i])+32);
						j:=j-1;
					end;
			end;
	end
else
	begin
		while (length(s)-j<>0) do
			begin
				i:=i+1;
				if s[i] in ['a'..'z'] then 
					begin 
						s[i]:=upcase(s[i]);
						j:=j+1;
					end;
			end;
	end;
writeln(s);
END.
