uses crt; 
var 
a,toplam:integer; 
begin 
clrscr; 
a:=0; 
Toplam:=0; 
While a<10 do 
Begin a:=a+1; 
Toplam:=toplam+a; 
Write(a, '+'); 
End; 
Writeln('= ',Toplam); 
Readln; 
END.