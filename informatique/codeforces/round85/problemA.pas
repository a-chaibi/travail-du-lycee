program problemA;
var
	T:longword;
	n,j,i:longword;
	p,c:array[1..10000] of longword;
	mrigel:boolean;
BEGIN
repeat
	readln(T);
until((T>=1) and (T<=500));
for j:=1 to T do
	begin 
		repeat
			readln(n);
		until((n>=1) and (n<=100));
		for i:=1 to n do
			begin
				repeat
					read(p[i], c[i]);
				until((p[i]>=0) and (p[i]<=1000) and (c[i]>=0) and (c[i]<=1000));
			end;
		mrigel:=true;
		for i:=1 to n-1 do
			begin
				if ((p[i+1]<c[i+1]) or (p[i+1]<p[i]) or (c[i+1]<c[i]) or (p[i+1]-p[i]<c[i+1]-c[i])) then
					begin
						mrigel:=false;
						break;
					end;
			end;
		if mrigel then
			begin
				writeln('YES');
			end
		else
			writeln('NO');
			
	end;
END.
