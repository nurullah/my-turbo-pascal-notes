uses crt;
var
murat,yedek:text;
ad,soyad,tel,ara:string;
a,bay,kod:integer;
c,ch,sil,deg,dev,s:char;
yaz:boolean;

procedure giris;
begin

end;
procedure okuma;
begin

end;
procedure silme;
begin

end;
procedure degis;
begin

end;

begin
repeat
clrscr;
textcolor(4);
textbackground(7);
Gotoxy(30,4);Write('A N A   M E N U');
gotoxy(30,5);Write('---------------');
gotoxy(30,7);Write('1.Kayçt Giriüi');
gotoxy(30,9);Write('2.Kayçt Listeleme');
gotoxy(30,11);Write('3.Kayçt Silme');
gotoxy(30,13);Write('4.Kayçt Deßiütirme');
gotoxy(30,15);Write('5.Äçkçü');

gotoxy(25,20);Write('Seáiminiz [1 2 3 4 5 ]....:');

repeat
s:=Readkey
until s in ['1'..'6',#27];
case s of
'1':giris;
'2':okuma;
'3':silme;
'4':degis;
'5':Halt;
#27:Halt;
END;
clrscr;
gotoxy(20,12);
Write('Baüka iülem Yapmak istiyormusunuz? (E/H)  ');
c:=Readkey;
until c in ['H','h'];
end.
