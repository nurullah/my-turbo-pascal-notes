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
gotoxy(30,7);Write('1.Kay�t Giri�i');
gotoxy(30,9);Write('2.Kay�t Listeleme');
gotoxy(30,11);Write('3.Kay�t Silme');
gotoxy(30,13);Write('4.Kay�t De�i�tirme');
gotoxy(30,15);Write('5.��k��');

gotoxy(25,20);Write('Se�iminiz [1 2 3 4 5 ]....:');

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
Write('Ba�ka i�lem Yapmak istiyormusunuz? (E/H)  ');
c:=Readkey;
until c in ['H','h'];
end.
