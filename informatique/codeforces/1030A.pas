program p1030A;
var
	n,i:byte;
	s:string;
	easy:boolean;
BEGIN
repeat
	readln(n);
	until((n>=1) and (n<=100));
	readln(s);
	easy:=true;
	for i:=1 to length(s) do
		begin
			if s[i]='1' then
				begin
					easy:=false;
					break;
				end;
		end;
	if easy then
		begin
			writeln('EASY');
		end
	else
		writeln('HARD');
END.
