program Soal2_Login;

const
  SANDI_RAHASIA = 'pascal123';
  MAKS_COBA     = 3;

{ Proses login maksimal 3 kali percobaan }
procedure ProsesLogin(var berhasil: boolean);
var
  masukan: string;
  coba: integer;
begin
  coba := 0;
  berhasil := false;
  repeat
    coba := coba + 1;
    write('Masukkan kata sandi (percobaan ', coba, '/', MAKS_COBA, '): ');
    readln(masukan);

    if masukan = SANDI_RAHASIA then
    begin
      writeln('Login Berhasil! Selamat Datang');
      berhasil := true;
      break;                      { hentikan loop jika benar }
    end
    else
      writeln('Kata sandi salah!');
  until coba >= MAKS_COBA;
end;

var
  sukses: boolean;
begin
  ProsesLogin(sukses);
  if not sukses then
    writeln('Akses Ditolak! Akun Terkunci.');
end.