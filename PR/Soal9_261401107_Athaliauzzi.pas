program Soal9_JumlahHari;

{ Kabisat: habis dibagi 400 ATAU (habis dibagi 4 tetapi tidak habis dibagi 100) }
function TahunKabisat(tahun: integer): boolean;
begin
  TahunKabisat := (tahun mod 400 = 0) or
                  ((tahun mod 4 = 0) and (tahun mod 100 <> 0));
end;

{ Jumlah hari tiap bulan; 0 jika bulan tidak valid }
function JumlahHari(tahun, bulan: integer): integer;
begin
  case bulan of
    1, 3, 5, 7, 8, 10, 12: JumlahHari := 31;
    4, 6, 9, 11:           JumlahHari := 30;
    2: if TahunKabisat(tahun) then
         JumlahHari := 29
       else
         JumlahHari := 28;
  else
    JumlahHari := 0;
  end;
end;

var
  tahun, bulan, hari: integer;
begin
  write('Masukkan tahun             : ');
  readln(tahun);
  write('Masukkan nomor bulan (1-12): ');
  readln(bulan);

  hari := JumlahHari(tahun, bulan);

  if hari = 0 then
    writeln('Nomor bulan tidak valid!')
  else
  begin
    if TahunKabisat(tahun) then
      writeln('Tahun ', tahun, ' adalah tahun kabisat.')
    else
      writeln('Tahun ', tahun, ' bukan tahun kabisat.');
    writeln('Jumlah hari pada bulan ', bulan, ' tahun ', tahun, ' = ', hari, ' hari');
  end;
end.