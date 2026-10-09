program Soal8_GajiKaryawan;

const
  JAM_STANDAR  = 40;
  TARIF_LEMBUR = 20000;
  BATAS_BONUS  = 50;
  NILAI_BONUS  = 100000;

{ Gaji pokok per golongan; -1 jika tidak valid }
function GajiPokok(gol: char): longint;
begin
  case gol of
    'A': GajiPokok := 1500000;
    'B': GajiPokok := 2000000;
    'C': GajiPokok := 2500000;
  else
    GajiPokok := -1;
  end;
end;

{ Lembur = kelebihan jam dari 40 x Rp20.000 }
function HitungLembur(jam: integer): longint;
begin
  if jam > JAM_STANDAR then
    HitungLembur := (jam - JAM_STANDAR) * TARIF_LEMBUR
  else
    HitungLembur := 0;
end;

{ Bonus khusus golongan C jika jam kerja > 50 }
function HitungBonus(gol: char; jam: integer): longint;
begin
  if (gol = 'C') and (jam > BATAS_BONUS) then
    HitungBonus := NILAI_BONUS
  else
    HitungBonus := 0;
end;

var
  gol: char;
  jam: integer;
  pokok, lembur, bonus, total: longint;
begin
  write('Golongan (A/B/C)       : ');
  readln(gol);
  gol := upcase(gol);
  write('Total jam kerja/minggu : ');
  readln(jam);

  pokok := GajiPokok(gol);
  if pokok < 0 then
    writeln('Golongan tidak valid!')
  else
  begin
    lembur := HitungLembur(jam);
    bonus  := HitungBonus(gol, jam);
    total  := pokok + lembur + bonus;

    writeln;
    writeln('======= RINCIAN GAJI =======');
    writeln('Gaji Pokok       : Rp', pokok);
    writeln('Lembur           : Rp', lembur);
    writeln('Bonus            : Rp', bonus);
    writeln('----------------------------');
    writeln('Total Gaji Akhir : Rp', total);
  end;
end.