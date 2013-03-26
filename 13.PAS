Uses crt;
Var
 I,N1,N2,B,K :Byte;
 ORT         :Real;
  Begin
  K:=0;B:=0;
  I:=I+1;
  Clrscr;
  For I:=1 To 5 Do
  Begin
  Write('1.Notu Giriniz    :');Readln(N1);
  Write('2.Notu Giriniz    :');Readln(N2);
  ORT:=(N1+N2)/2;
  Writeln('Ders Ortalamas   :', ORT:2:0);
  Writeln('=================================');
  If ORT>44 Then B:=B+1
  Else K:=K+1;
 End;
  Writeln('Byklerin Says',B);
  Writeln('K‡klerin says',K);
  Writeln('=================================');
  Readln;
End.
