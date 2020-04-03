program HeureMiroir;
type
	tab=array[1..20] of string;
var
	HN,NP:tab;
	N:integer;
procedure GetN(var n:integer);
begin
	repeat
		writeln('Donner le nombre de nouveau-nés:');
		readln(n);
	until(n in [3..20]);
end;
procedure Remplissage(var noms, heures:tab; n:integer);
var
	i,h,m,e:integer;
	s:string;
	admissible:boolean;
begin
	for i:=1 to n do
		begin
			repeat
				writeln('Donner le nom du nouveau-né numéro ', i);
				readln(noms[i]);
			until((length(noms[i])<31) and (noms[i][1] in ['A'..'Z']));
		end;
	for i:=1 to n do
		begin
			repeat
				admissible:=true;
				writeln('Donner l''heure de naissance du nouveau née numéro ', i, ' (', noms[i], ')');
				readln(heures[i]);
				s:=copy(heures[i],1,2);
				val(s,h,e);
				s:=copy(heures[i],4,2);
				val(s,m,e);
				if (length(heures[i])<>5) or not(m in [0..56]) or not(h in [0..23]) or (heures[i][3]<>':') then
					admissible:=false;
			until(admissible);
		end;

end;
procedure Affichage(var noms, heures:tab; n:integer);
var
	i,h,m,e:integer;
	s:string;
	doub,inv,trip:integer;
begin
	doub:=0;
	inv:=0;
	trip:=0;
	for i:=1 to n do
		begin
				s:=copy(heures[i],1,2);
				val(s,h,e);
				s:=copy(heures[i],4,2);
				val(s,m,e);
				if (h=m) then 
					begin
						writeln(noms[i], ': heure miroir doublée.');
						doub:=doub+1;
					end;
				if ((h mod 11 = 0) and (h mod 10 = m div 10)) or ((m mod 11 =0) and (h mod 10 = m div 10)) then
					begin
						writeln(noms[i], ': heure miroir triplée.');
						trip:=trip+1;
					end;
				if ((h mod 10 = m div 10) and (h div 10 = m mod 10)) then
					begin
						writeln(noms[i], ': heure miroir inversée.');
						inv:=inv+1;
					end;
		end;
	writeln('Le nombre des nouveau-nés ayant l''heure de naissance miroir doublée est ',doub,'.');
	writeln('Le nombre des nouveau-nés ayant l''heure de naissance miroir triplée est ',trip,'.');
	writeln('Le nombre des nouveau-nés ayant l''heure de naissance miroir inversée est ',inv,'.');

end;
BEGIN
	GetN(N);
	Remplissage(NP,HN,N);
	Affichage(NP,HN,N);
END.
