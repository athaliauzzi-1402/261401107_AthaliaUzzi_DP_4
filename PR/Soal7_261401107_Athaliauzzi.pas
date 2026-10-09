program Soal7_TarifParkir;

const
  BATAS_JAM = 10;                  { lebih dari 10 jam = tarif flat }

{ Hitung tarif parkir; -1 jika kode tidak valid }
function HitungTarif(kode: char; jam: integer): longint;
begin
  case kode of
    'M': if jam > BATAS_JAM then
           HitungTarif := 30000
         else
           HitungTarif := 5000 + (jam - 1) * 3000;
    'K': if jam > BATAS_JAM then
           HitungTarif := 10000
         else
           HitungTarif := 2000 + (jam - 1) * 1000;
    'B': if jam > BATAS_JAM then
           HitungTarif := 50000
         else
           HitungTarif := 10000 + (jam - 1) * 5000;
  else
    HitungTarif := -1;
  end;
end;

var
  kode: char;
  jam: integer;
  tarif: longint;
begin
  write('Kode kendaraan (M=Mobil, K=Motor, B=Bus): ');
  readln(kode);
  kode := upcase(kode);
  write('Lama parkir (jam): ');
  readln(jam);
  if jam < 1 then jam := 1;

  tarif := HitungTarif(kode, jam);

  if tarif < 0 then
    writeln('Kode kendaraan tidak valid!')
  else
  begin
    writeln('Lama parkir : ', jam, ' jam');
    if jam > BATAS_JAM then
      writeln('(Berlaku Tarif Maksimal Flat)');
    writeln('Total tarif : Rp', tarif);
  end;
end.