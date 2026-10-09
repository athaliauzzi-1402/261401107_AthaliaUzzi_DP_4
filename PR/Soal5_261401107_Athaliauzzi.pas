program Soal5_RekapNilai;

const
  MAKS_MHS    = 100;
  BATAS_LULUS = 65;

type
  TRata = array[1..MAKS_MHS] of real;

{ Input nilai dengan nested loop, hitung rata-rata tiap mahasiswa }
procedure InputNilai(m, n: integer; var rata: TRata);
var
  i, j: integer;
  nilai, jumlah: real;
begin
  for i := 1 to m do               { loop luar: mahasiswa }
  begin
    writeln('--- Mahasiswa ke-', i, ' ---');
    jumlah := 0;
    for j := 1 to n do             { loop dalam: tugas }
    begin
      write('Nilai tugas ke-', j, ': ');
      readln(nilai);
      jumlah := jumlah + nilai;
    end;
    rata[i] := jumlah / n;
  end;
end;

{ Tampilkan rata-rata, status, dan total LULUS / TIDAK LULUS }
procedure TampilkanRekap(m: integer; rata: TRata);
var
  i, lulus, tidakLulus: integer;
begin
  lulus := 0;
  tidakLulus := 0;

  writeln;
  writeln('======= REKAPITULASI NILAI =======');
  for i := 1 to m do
  begin
    write('Mahasiswa ke-', i, ' : rata-rata ', rata[i]:0:2, ' -> ');
    if rata[i] >= BATAS_LULUS then
    begin
      writeln('LULUS');
      lulus := lulus + 1;
    end
    else
    begin
      writeln('TIDAK LULUS');
      tidakLulus := tidakLulus + 1;
    end;
  end;
  writeln('----------------------------------');
  writeln('Total mahasiswa LULUS       : ', lulus);
  writeln('Total mahasiswa TIDAK LULUS : ', tidakLulus);
end;

var
  m, n: integer;
  rata: TRata;
begin
  write('Masukkan jumlah mahasiswa (M): ');
  readln(m);
  write('Masukkan jumlah tugas (N)    : ');
  readln(n);

  InputNilai(m, n, rata);
  TampilkanRekap(m, rata);
end.