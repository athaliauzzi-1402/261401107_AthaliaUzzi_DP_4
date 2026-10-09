{ Soal 1 - Total Belanja Toko Buku
  Nama : (Athalia uzzi)
  NIM  : (261401107) }
program Soal1_TokoBuku;

const
  MAKS = 100;

type
  TDaftarHarga = array[1..MAKS] of real;

{ Input harga barang ke-1 sampai ke-N dan jumlahkan total }
procedure InputHarga(n: integer; var harga: TDaftarHarga; var total: real);
var
  i: integer;
begin

  total := 0;
  for i := 1 to n do
  begin
    write('Harga barang ke-', i, ': Rp');
    readln(harga[i]);
    total := total + harga[i];
  end;
end;

{ mentukan persen diskon dengan if-else }
function HitungPersenDiskon(total: real): integer;
begin
  if total < 100000 then
    HitungPersenDiskon := 0
  else if total < 500000 then
    HitungPersenDiskon := 10
  else
    HitungPersenDiskon := 20;
end;

{ mampilkan rincian belanja }
procedure TampilkanRincian(n: integer; harga: TDaftarHarga; total: real; persen: integer);
var
  i: integer;
  diskon, bayar: real;
begin
  diskon := total * persen / 100;
  bayar  := total - diskon;

  writeln;
  writeln('======= RINCIAN BELANJA =======');
  for i := 1 to n do
    writeln('Barang ke-', i, '            : Rp', harga[i]:0:0);
  writeln('-------------------------------');
  writeln('Total Sebelum Diskon : Rp', total:0:0);
  writeln('Besar Diskon (', persen, '%)  : Rp', diskon:0:0);
  writeln('Total Bayar Akhir    : Rp', bayar:0:0);
end;

var
  n, persen: integer;
  harga: TDaftarHarga;
  total: real;
begin
  write('Masukkan jumlah barang (N): ');
  readln(n);

  InputHarga(n, harga, total);
  persen := HitungPersenDiskon(total);
  TampilkanRincian(n, harga, total, persen);
end.