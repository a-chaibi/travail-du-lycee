program p15;
function factorielle(n:integer):longword;
var
i:integer;
begin
	factorielle:=1;
	for i:=2 to n do
		factorielle:=factorielle*i;
end;
BEGIN
writeln((1+20*factorielle(19))*(1+20*factorielle(19)));
END.
