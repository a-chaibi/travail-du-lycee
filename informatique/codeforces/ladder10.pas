program ladder10;
var
	n,i,k:byte;
	s:string;
BEGIN
readln(n);
readln(s);
k:=0;
if n<2 then 
	begin
		writeln(0);
	end
else
	begin
		for i:=2 to n do if s[i]=s[i-1] then k:=k+1;	
		(*for i:=3 to n do
			begin
				if (s[i]<>s[i-1]) and (s[i-1]=s[i-2]) then
					begin
						k:=k-1;
					end
			end;*)
		writeln(k);
	end;
END.
