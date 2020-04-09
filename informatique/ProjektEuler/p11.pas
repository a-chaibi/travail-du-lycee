program p7;
type
	tab=array[1..10000] of longword;
var
	p,s:longword;
	primes:tab;
procedure getprimestoN(var table:tab; n:longword);
var
	i,k,j:longword;
	prime:boolean;
begin
	k:=0;
	i:=1;
	repeat
		begin
			i:=i+1;
			prime:=true;
			for j:=1 to trunc(sqrt(i)) do
				begin
					if ((j<>1) and (j<>i) and (i mod j=0)) then
						begin
							prime:=false;
							break;
						end;
				end;
			if (prime=true)  then
				begin
					k:=k+1;
					table[k]:=i;
				end;
		end;	
	until(k=n);
end;
function puissance(a:longword; b:longword):longword;
var
	i:longword;
begin
	puissance:=1;
	for i:=1 to a do
		puissance:=puissance*b;
end;
function nombredeDiviseurs(n:longword; table:tab):integer;
var
	k,j:longword;
begin
	nombredediviseurs:=1;
	j:=0;
	while (primes[j]<round(sqrt(n))+1) do
		begin
			j:=j+1;
			for k:=1 to 100 do
				begin
					if (n mod (puissance(k,table[j])) <> 0) then
						break;
				end;
			nombredediviseurs:=nombredediviseurs*k;
		end;
end;
BEGIN
	getprimestoN(primes, 1500);
	p:=5984;
	repeat
		p:=p+1;
		s:=round((p*(p+1))/2);
	until(nombredeDiviseurs(s,primes)>480);
	writeln(s);
	writeln(p);
	writeln(nombredeDiviseurs(s,primes));
END.
