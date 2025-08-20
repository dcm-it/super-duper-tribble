# PHP Bug Project

## Instruksi 1:

1. Clone repo ini.
2. Buat branch baru dengan nama sesuai `namamu`.
3. Jalankan project, jelaskan dulu **HTTP ERROR 500** sebelum kamu perbaiki.
   - Aktifkan error reporting di PHP.
   - Cek koneksi database.
   - Cek query SQL.
4. Perbaiki bug hingga halaman bisa menampilkan data `users`.
5. Buat database `testdb` dengan tabel `users`:
   sql:
   CREATE TABLE users (
   id INT AUTO_INCREMENT PRIMARY KEY,
   name VARCHAR(100),
   email VARCHAR(100)
   );
   INSERT INTO users (name, email) VALUES
   ('Alice', 'alice@example.com'),
   ('Bob', 'bob@example.com');

## Instruksi 2:

1. Buat query 'tampilkan semua inventory yang memiliki satuan m (meter) dan currency-nya IDR yang memiliki low stock <3'
2. Bis menggunakan PHPmyadmin, heidiSQL atau yang lain untuk menjalankan SQL Query.
3. Seletah selesai tolong screenshoot lalu simpan filenya ke dalam derectory ini.

## Instruksi 3:
1. Buat fungsi PHP bernama reverseString($text) yang menerima input berupa string, lalu mengembalikan output berupa string yang sudah dibalik.

## Instruksi Terakhir: 
1. Commit perubahanmu dengan pesan yang jelas.
2. Push ke branch masing-masing.
3. Buat pull request ke repo utama.