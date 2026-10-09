program Soal10_NamaHari;

{ Ubah angka 1-7 menjadi nama hari }
function NamaHari(n: integer): string;
begin
  case n of
    1: NamaHari := 'Hari Senin';
    2: NamaHari := 'Hari Selasa';
    3: NamaHari := 'Hari Rabu';
    4: NamaHari := 'Hari Kamis';
    5: NamaHari := 'Hari Jumat';
    6: NamaHari := 'Hari Sabtu';
    7: NamaHari := 'Hari Minggu';
  else
    NamaHari := 'Angka tidak valid! Masukkan 1 sampai 7.';
  end;
end;

var
  n: integer;
begin
  write('Input: ');
  readln(n);
  writeln('Output: "', NamaHari(n), '"');
end.