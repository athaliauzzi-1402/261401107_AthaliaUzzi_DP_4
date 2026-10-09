program Soal3_DeretAngka;

{ Tampilkan deret sesuai kategori, kelipatan 5 dilewati }
procedure TampilkanDeret(n, kategori: integer);
var
  i: integer;
begin
  writeln('Hasil deret:');
  i := 0;
  while i < n do
  begin
    i := i + 1;

    if (kategori = 1) and (i mod 2 = 0) then
      continue;                   { lewati genap saat pilih ganjil }

    if (kategori = 2) and (i mod 2 <> 0) then
      continue;                   { lewati ganjil saat pilih genap }

    if i mod 5 = 0 then
      continue;                   { lewati kelipatan 5 }

    write(i, ' ');
  end;
  writeln;
end;

var
  n, kategori: integer;
begin
  write('Masukkan nilai N: ');
  readln(n);
  write('Pilih kategori deret (1: Ganjil, 2: Genap): ');
  readln(kategori);

  if (kategori = 1) or (kategori = 2) then
    TampilkanDeret(n, kategori)
  else
    writeln('Pilihan kategori tidak valid!');
end.