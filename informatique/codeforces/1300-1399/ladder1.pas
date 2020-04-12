program ladder1;
var
	n,i,pmax,pmin:byte;
	a:array[1..100] of byte;
BEGIN
readln(n);
pmax:=1;
pmin:=1;
for i:=1 to n do
	begin
		read(a[i]);
		if(a[pmax]<a[i]) then pmax:=i;
		if(a[pmin]>=a[i]) then pmin:=i;
	end;
if pmax<pmin then writeln(pmax+n-pmin-1);
if pmax>pmin then writeln(pmax+n-pmin-2);
END.
