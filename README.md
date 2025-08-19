# PHP Bug Project

## Instruksi:
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

6. Commit perubahanmu dengan pesan yang jelas.

7. Push ke branch masing-masing.

8. Buat pull request ke repo utama.