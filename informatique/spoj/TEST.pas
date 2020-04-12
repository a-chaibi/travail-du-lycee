program TEST; (*Life, the Universe, and Everything*)
var
	fortytwo:integer;
BEGIN
repeat
	readln(fortytwo);
	if fortytwo<>42 then 
		writeln(fortytwo);
until(fortytwo=42);
END.
