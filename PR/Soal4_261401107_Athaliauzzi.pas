program Soal4_Kalkulator;

procedure TampilkanMenu;
begin
  writeln('=========== KALKULATOR ===========');
  writeln('1: Penjumlahan');
  writeln('2: Pengurangan');
  writeln('3: Perkalian');
  writeln('4: Pembagian Real');
  writeln('5: DIV & MOD');
  writeln('==================================');
end;

{ Operasi bilangan real (pilihan 1-4) }
procedure OperasiReal(pilih: integer);
var
  a, b: real;
begin
  write('Masukkan angka pertama : ');
  readln(a);
  write('Masukkan angka kedua   : ');
  readln(b);

  case pilih of
    1: writeln('Hasil: ', a:0:2, ' + ', b:0:2, ' = ', (a + b):0:2);
    2: writeln('Hasil: ', a:0:2, ' - ', b:0:2, ' = ', (a - b):0:2);
    3: writeln('Hasil: ', a:0:2, ' x ', b:0:2, ' = ', (a * b):0:2);
    4: if b = 0 then
         writeln('Error: tidak bisa dibagi dengan nol!')
       else
         writeln('Hasil: ', a:0:2, ' / ', b:0:2, ' = ', (a / b):0:2);
  end;
end;

{ DIV & MOD (pilihan 5) }
procedure OperasiDivMod;
var
  x, y: integer;
begin
  write('Masukkan bilangan bulat pertama : ');
  readln(x);
  write('Masukkan bilangan bulat kedua   : ');
  readln(y);

  if y = 0 then
    writeln('Error: tidak bisa dibagi dengan nol!')
  else
  begin
    writeln('Hasil: ', x, ' DIV ', y, ' = ', x div y);
    writeln('Hasil: ', x, ' MOD ', y, ' = ', x mod y);
  end;
end;

var
  pilih: integer;
  lagi: char;
begin
  repeat
    TampilkanMenu;
    write('Pilih operasi (1-5): ');
    readln(pilih);

    case pilih of
      1..4: OperasiReal(pilih);
      5:    OperasiDivMod;
    else
      writeln('Pilihan tidak valid!');
    end;

    writeln;
    write('Apakah ingin melakukan perhitungan lagi? (Y/T): ');
    readln(lagi);
    writeln;
  until (lagi = 'T') or (lagi = 't');
end.