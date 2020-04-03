program HeureMiroir;
type
	tab=array[1..20] of string;
var
	HN,NP:tab;
	N:integer;
procedure Remplissage(var noms, heures:tab; n:integer);
var
	i:integer;
begin
	for i:=1 to n do
		begin
			repeat
				writeln('Donner le nom du nouveau-né numéro ', i);
				readln(noms[i]);
			until(length(noms[i])<31);
		end;
end;
procedure Affichage(var noms, heures:tab; n:integer);
begin
end;
BEGIN
	writeln('Donner le nombre de nouveau-nés:');
	readln(N);
	Remplissage(NP,HN,N);
	Affichage(NP,HN,N);
END.
