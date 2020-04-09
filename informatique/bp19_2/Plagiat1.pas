program Plagiat;
type
	tab=array[1..100] of string; (*Tableau des mots dans un texte donné*)
	tesp=array[1..100] of integer; (*Tableau qui renseigne sur les positions des espaces dans un texte donné*)
var
	T1,T2:string;
	Nbc:integer;
procedure Saisir(var s:string; n:integer);
var
i:integer;
satisfecit:boolean;
sprime:string;
begin
	repeat
		writeln('Donner le texte numéro ', n);
		readln(sprime); (*C'est le texte avec des espaces superflues*)
		satisfecit:=true;
		s:='';
		for i:=1 to length(sprime) do
			begin
				if not((sprime[i]=' ') and (sprime[i+1]=' ')) then
					s:=s+sprime[i];				
			end;
		if s[length(s)-1]=' ' then              (* On enleve un espace eventuel avant le point*)
			delete(s, length(s)-1, 1);
		if s[1]=' ' then			(* On enleve un espace eventuel au debut du texte*) 
			delete(s, 1, 1);
		if ((length(s)>200) or (s[length(s)]<>'.')) then	(* On verifie que le texte ne dépasse pas 200 caractère après le retranchement
									des espaces superflues et qu'il se termine avec un point*)
			satisfecit:=false;
		for i:=1 to length(s)-1 do                                         (* On vérifie que le texte est composé de lettres majuscules et d'espaces*)
			begin
				if not( (s[i] in ['A'..'Z']) or (s[i]=' ')) then
					satisfecit:=false;
			end;
	until(satisfecit)
end;
function Nbmots(s:string):integer;
var
	i,j:integer;
begin
	j:=0;
	for i:=1 to length(s) do
		begin
			if s[i]=' ' then
				j:=j+1;
		end;
	Nbmots:=j+1;
end;
function Commun(s1,s2:string):integer;
var
	t1,t2:tab;
	T:tesp;
	i,j,k:integer;
begin
	Commun:=0;
	(*On va tout d'abord identifier les positions des espaces et les insérer dans le tableau T*)
	j:=1;
	for i:=1 to length(s1) do
		begin
			if (s1[i]=' ') then
				begin
					T[j]:=i;
					j:=j+1;
				end;
		end;
		j:=j-1;
	T[j+1]:=length(s1)-1;
	(*On va ensuite découper le texte s1 dans un tableau de mots t1*)
	t1[1]:=copy(s1,1, T[1]-1);
	t1[j+1]:=copy(s1,T[j]+1, T[j+1]-T[j]);
	for i:=1 to j-1 do
		begin
			t1[i+1]:=copy(s1,T[i]+1, T[i+1]-T[i]-1);
		end;
	(*De meme pour s2*)
	j:=1;
	for i:=1 to length(s2) do
		begin
			if (s2[i]=' ') then
				begin
					T[j]:=i;
					j:=j+1;
				end;
		end;
		j:=j-1;
	T[j+1]:=length(s2)-1;
	t2[1]:=copy(s2,1, T[1]-1);
	t2[j+1]:=copy(s2,T[j]+1, T[j+1]-T[j]);
	for i:=1 to j-1 do
		begin
			t2[i+1]:=copy(s2,T[i]+1, T[i+1]-T[i]-1);
		end;
	(*On determine le nombre de mots en communs*)
	for i:=1 to j+1 do
		begin
			for k:=1 to j+1 do
				begin
					if t1[i]=t2[k] then
						begin
							Commun:=Commun+1;
							t2[k]:=''; (*Puisque on a compté ce mot une fois nous allons le supprimer laissant ainsi sa place vide
								pour ne soit pas compté la prochaine fois*).
						end;
				end;
		end;
end;
BEGIN
	repeat 
		Saisir(T1, 1);
		Saisir(T2, 2);
	until(Nbmots(T1)=Nbmots(T2));
	Nbc:=Commun(T1,T2);
	if Nbc>=Nbmots(T1)/2 then
		begin
		writeln('Ce texte est plagié');
		end;
END.

