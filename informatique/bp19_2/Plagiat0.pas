program Plagiat;
var
	T1,T2:string;
	Nbc:integer;
function Nbmots(s:string):integer;
begin
end;
function Commun(s1,s2:string):integer;
begin
end;
BEGIN
	repeat
		readln(T1);
		readln(T2);
	until(Nbmots(T1)=Nbmots(T2));
	Nbc:=Commun(T1,T2);
END.

