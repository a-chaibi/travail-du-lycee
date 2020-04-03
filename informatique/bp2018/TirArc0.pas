program TirArc;
type
	tab=array[1..20] of string;
var
	N,i:integer;
	A:tab;


function Alpha(s:string) : boolean;
	(*Pour s'assurer que les éléments de A sont à 30 caractères au plus
	comme il est recommandé dans l'énoncé.*)
begin
	Alpha:=false;
	if length(s)<31 then
		Alpha:=true;
end;




procedure Score(var tableau:tab; var n:integer);
begin
end;
begin
	repeat
		writeln('Donner le nombre de joueurs :');
		readln(N);
	until(N in [2..20]);
	for i:=1 to N do
		begin
			repeat
				writeln('Donner le nom du joueur numéro ', i, ' :');
				readln(A[i]);
			until(Alpha(A[i]))
		end;
	Score(A,N);
end.
