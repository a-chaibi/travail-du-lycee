program prime1;
var
	t,i,e:byte;
	k,j,n1,n2:longword;
	ch,ch1:string;
	prime:boolean;
begin
	repeat
		readln(t);
	until(t<=10);
	for i:=1 to t do
		begin
			repeat		
				readln(ch);
				ch1:=copy(ch,1,pos(' ',ch)-1);
				delete(ch,1,pos(' ',ch));
				val(ch1,n1,e);
				val(ch,n2,e);
			until((n1>=0) and (n2>=n1) and (n2<=1000000000) and (n2-n1<=100000));
			for j:=n1 to n2 do
				begin
					if j=2 then
						prime:= true;
					if (round(sqrt(j))<>1) then
						begin
							for k:=2 to round(sqrt(j)) do
								begin
									prime:=true;
									if j mod k=0 then
										begin
											prime:=false;
											break;
										end;
								end;
						end;
					if prime then writeln(j);
				end;
			writeln();
		end;
END.
