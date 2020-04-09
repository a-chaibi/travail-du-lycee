program p14;
var
	affmax, max,i:longword;
function chaine(n:longword):longword;
begin
	chaine:=0;
	while n<>1 do
		begin
			if (n mod 2 = 0) then
				begin
					n:=n div 2;
				end
			else 
				n:=3*n+1;
			chaine:=chaine+1;
		end;
end;
BEGIN
max:=1;
for i:=5 to 999999 do
	begin
	if(chaine(i)>max) then
		begin
			max:=chaine(i);
			affmax:=i;
		end;
	end;
	writeln('la chaine résultante de ', affmax, ' est de longeur ', max);
END.
