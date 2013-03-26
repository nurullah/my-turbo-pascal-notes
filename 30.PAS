uses crt;
var
s:char;
Begin
clrscr;
Writeln('ANA MENU':40);
Writeln('********':40);
Writeln('1.GiR˜ ':40);
Writeln('2.LiSTE ':40);
Writeln('3.€IKI ':40);
Writeln;
Write('SE€˜M˜N˜Z [1  2  3] ......: ':48);
Repeat
s:=Readkey;
Until s in ['1'..'3',#27];
clrscr;
case s of
'1':Writeln('GiriŸ iŸlemleri':40);
'2':Writeln('Listeleme iŸlemleri':40);
'3':Writeln('€kŸ ˜Ÿlemi':40);
End;
Readln;
END.
