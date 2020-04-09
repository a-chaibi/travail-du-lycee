program Fidelite;
type
	tab=array[1..30] of string;
var
	TA:tab;
	N:integer;
procedure getN(var n:integer);
begin
repeat
	writeln('Donner le nombre des adhérents: ');
	readln(n);
until(n in [5..30]);
end;
procedure Remplir(var ta:tab; n:integer);
var
	i,d,e:integer;
	ch:string;
begin
	for i:=1 to n do
		begin
			repeat
				writeln('Donner le numéro d''abonnement de l''adhérent numéro ', i);
				readln(ta[i]);
				ch:=copy(ta[i],6,2);
				val(ch,d,e);
			until((ta[i][1] in ['A','J','E']) and (length(ta[i])=10) and (d in [1..12]) and (ta[i][2]='2') and (ta[i][3]='0') and (ta[i][4] in ['1','0']) and (ta[i][5] in ['1'..'9']));
		end;
end;
procedure Bonus(ta:tab; n:integer);
var
	nbmois:integer;
	i,e,mois,ans:integer;
	cat,ch:string;
begin
	writeln();
	writeln('******************************');
	writeln();
	repeat
		write('Entrer "A" pour adulte, "E" pour enfant et "J" pour junior: ');
		readln(cat);
	until(cat[1] in ['A','E','J'] and length(cat)=1);
	for i:=1 to n do
		begin
			if ta[i][1]=cat then
				begin;
				ch:=copy(ta[i],4,2);
				val(ch,ans,e);
				ch:=copy(ta[i],6,2);
				val(ch,mois,e);
				nbmois:=12*(19-ans)+5-mois;
				if nbmois>5*12 then
					begin
			writeln();
					writeln('L''adhérent ayant le numéro d''abonnement ', ta[i], ' a gagné ', omega, ' heures de bonus.');
				end;
				end;
		end;
end;
BEGIN
getN(N);
Remplir(TA,N);
Bonus(TA,N);
END.
