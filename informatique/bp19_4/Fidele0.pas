program Fidelite;
type
	tab=array[1..30] of string;
var
	TA:tab;
	N:integer;
procedure Remplir(var ta:tab; n:integer);
var
	i:integer;
begin
	for i:=1 to n do
		begin
			repeat
				writeln('Donner le numéro d''abonnement de l''adhérent numéro ', i);
				readln(ta[i]);
			until(length(ta[i])<11);
		end;
end;
procedure Bonus(ta:tab; n:integer);
begin
end;
BEGIN
repeat
	writeln('Donner le nombre des adhérents: ');
	readln(N);
until(N in [5..30]);
Remplir(TA,N);
Bonus(TA,N);
END.
