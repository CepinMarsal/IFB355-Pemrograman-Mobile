# Tugas 3 - Implementasi Menu & Navigation

## Identitas
- **Nama:** Cepin Marsal Javier Hilmi Darmawan
- **NIM:** 152024056
- **Kelas:** BB
- **Mata Kuliah:** IFB355 Pemrograman Mobile

## Deskripsi
Pada Tugas 3 dibuat aplikasi sederhana bertema **E-Money** menggunakan Flutter. Aplikasi memiliki halaman utama (**HomePage**), halaman yang menampilkan kumpulan **12 menu layanan E-Money (MenuPage)**, serta halaman tujuan untuk masing-masing menu. Setiap menu dapat diklik dan akan berpindah ke halaman yang berbeda menggunakan **Navigator.push()**.

## Fitur Aplikasi

### HomePage
HomePage merupakan halaman utama aplikasi yang berisi:
- Informasi pengguna
- Saldo E-Money
- Beberapa layanan E-Money
- Tombol **Lihat Semua Menu**
Tombol **Lihat Semua Menu** digunakan untuk berpindah dari HomePage menuju MenuPage.

### MenuPage
MenuPage menampilkan 12 layanan E-Money:
1. Top Up
2. Transfer
3. Scan QR
4. Riwayat
5. Pulsa & Data
6. Voucher Game
7. Transportasi
8. Tagihan Air
9. Listrik
10. TV Kabel
11. Streaming
12. Belanja Online
Setiap menu dapat diklik dan memiliki halaman tujuan masing-masing.

## Implementasi Navigasi
Navigasi dari **HomePage menuju MenuPage** menggunakan `Navigator.push()`.
Contoh:
```dart
Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => const MenuPage(),
  ),
);
