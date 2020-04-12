program ladder3;
var
	n,t,j,i,k:byte;
	s:string;
BEGIN
read(n);
readln(t);
readln(s);
for i:=1 to t do
	begin
		for j:=2 to n do
			begin
				if (s[j]='G') and (s[j-1]='B') and (j<>k+1) then
					begin
						k:=j;
						s[j]:='B';
						s[j-1]:='G';		
					end;
			end;
		k:=0;
	end;
writeln(s);
END.
