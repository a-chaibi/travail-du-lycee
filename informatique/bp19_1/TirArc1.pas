program TirArc;
type
	tab=array[1..20] of string; (* Le type du tableau qui va contenir les noms des joueurs*)
	bull=array[1..20] of integer; (* Le type du tableau qui va contenir les scores des joueurs*)
var
	A:tab; 
	N:integer;

(* La fonction alpha qui sert à verifier que les noms saisies sont composés de lettres et de espaces*)
function Alpha(s:string) : boolean; 
var 
i:integer;
begin
	Alpha:=true;
	if length(s)>30 then
		Alpha:=false;
	for i:=1 to length(s) do
		begin
			if not((s[i] in ['a'..'z']) or (s[i] in ['A'..'Z']) or (s[i]=' ')) then
				Alpha:=false;
		end;
end;


(* La procedure saisieEssai qui sert à remplir le tableau A par les noms des joueurs*)
procedure saisieNoms(var tableau:tab; var n:integer);
var 
i:integer;
begin
	for i:=1 to n do
		begin
			repeat
				writeln('Donner le nom du joueur numéro ', i, ' :');
				readln(tableau[i]);
			until(Alpha(tableau[i]))
		end;
end;

(* La procedure Score qui sert à remplir un tableau de scores (bulletin) puis à trier le tableau A par ordre décroissant des scores*)
procedure Score(var tableau:tab; var n:integer);
var
	i,j,k:integer; (* compteurs et variables auxilières*)
	bulletin:bull;
	s:string; (* variable auxilière *)
begin
	for i:=1 to n do
		begin
			bulletin[i]:=0;
			for j:=1 to 3 do
				begin
					repeat
						writeln('Donner le résultat de l''essai numéro ', j,' du joueur numéro ', i, ' (', tableau[i],'):');
						readln(k);
					until((-1<k) and (k<11));
					bulletin[i]:=bulletin[i]+k;
				end;
		end;
	for i:=1 to n do
		begin
			writeln(bulletin[i], tableau[i]);
		end;
	for i:=1 to n do
		begin
			for j:=i to n do
				begin
					(* Ici le tableau bulletin est trié et le tableau tableau le suit afin qu'il reste une correspondance entre les noms et les score à un indice donné i. *)
					if bulletin[j]>bulletin[i] then
						begin
						k:=bulletin[i];
						bulletin[i]:=bulletin[j];
						bulletin[j]:=k;
						s:=tableau[i];
						tableau[i]:=tableau[j];
						tableau[j]:=s;
					end;
				end;
			writeln(tableau[i], ' avec un score de ', bulletin[i]);
		end;
end;
begin
	repeat
		writeln('Donner le nombre de joueurs :');
		readln(N);
	until(N in [2..20]);
	writeln('***********************');
	writeln();
	saisieNoms(A,N);
	writeln('***********************');
	writeln();
	Score(A,N);
end.
