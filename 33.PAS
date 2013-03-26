uses crt;

procedure ciz (x,y,z,w,r:byte);
var a:Byte;
begin
textcolor(r);
for a:=x to z do
    Begin
    gotoxy(a,y); Write(#178) ;
    end;
for a:=x to z do
    Begin
    gotoxy(a,w); Write(#178) ;
    End;
for a:=y to  w do
    begin
    gotoxy(x,a);Write(#178);
    end;
for a:=y to  w do
    begin
    gotoxy(z,a);Write(#178);
    end;
end;
Begin
clrscr;
ciz(1,1,80,24,1);
ciz(10,5,70,19,2);
ciz(20,10,60,14,3);
readln;
end.
