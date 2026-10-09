program Soal6_NilaiAkhir;

{ Nilai akhir = 30% Tugas + 30% UTS + 40% UAS }
function HitungNilaiAkhir(tugas, uts, uas: real): real;
begin
  HitungNilaiAkhir := (0.3 * tugas) + (0.3 * uts) + (0.4 * uas);
end;

{ LULUS jika nilai akhir >= 60 DAN kehadiran >= 80% }
function StatusLulus(nilai, hadir: real): boolean;
begin
  StatusLulus := (nilai >= 60) and (hadir >= 80);
end;

{ Indeks huruf A/B/C/D/E }
function IndeksHuruf(nilai: real): char;
begin
  if nilai >= 85 then
    IndeksHuruf := 'A'
  else if nilai >= 75 then
    IndeksHuruf := 'B'
  else if nilai >= 60 then
    IndeksHuruf := 'C'
  else if nilai >= 50 then
    IndeksHuruf := 'D'
  else
    IndeksHuruf := 'E';
end;

var
  tugas, uts, uas, hadir, akhir: real;
begin
  write('Nilai Tugas (0-100) : '); readln(tugas);
  write('Nilai UTS (0-100)   : '); readln(uts);
  write('Nilai UAS (0-100)   : '); readln(uas);
  write('Kehadiran (%)       : '); readln(hadir);

  akhir := HitungNilaiAkhir(tugas, uts, uas);

  writeln;
  writeln('Nilai Akhir  : ', akhir:0:2);
  writeln('Indeks Huruf : ', IndeksHuruf(akhir));
  if StatusLulus(akhir, hadir) then
    writeln('Status       : LULUS')
  else
    writeln('Status       : TIDAK LULUS');
end.