program ladder22;
var
	n,i,j:integer;
BEGIN
readln(n);
for i:=0 to 2*n do
	begin
		for j:=0 to 2*n do
			begin
				if (i<=n-1) then
					begin
						if (j<n-i) or (j>n+i) then write('.');
						if (j<=n+i) and (j>=n-i) then write(abs(n-j+i));
					end
				else
					begin
						if (j<i-n-1) or (j>2*n-i+1) then write('.');
						if (j>=i-n) and (j<=2*n-i) then write(abs(n-j+i));
					end;
				if(j=2*n) then writeln();
			end;
	end;
END.
