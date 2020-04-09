program p5;
var
	i:longword;
	j:byte;
	o:boolean;
BEGIN
	for i:=1 to 4294967295 do
		begin
			o:=true;
			for j:=2 to 19 do 
				begin
					if (i mod j <>0) then
						begin
							o:= false;
							break;
						end;
				end;
			if o=true then
				begin
					writeln(i);
				end;
		end;
END.
