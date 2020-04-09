program p6;
const
	sommeacent=5050;
var
	i:byte;
	s:longword;
BEGIN
	s:=0;
	for i:=1 to 100 do
		s:=s+sqr(i);
	writeln(sqr(5050)-s);
END.
