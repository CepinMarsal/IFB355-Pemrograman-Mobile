# Tugas 4 - Implementasi Navbar pada Aplikasi E-Money

## Identitas
- **Nama:** Cepin Marsal Javier Hilmi Darmawan
- **NIM:** 152024056
- **Kelas:** BB
- **Mata Kuliah:** IFB355 Pemrograman Mobile

## Deskripsi
Pada Tugas 4 dilakukan pengembangan aplikasi sederhana bertema **E-Money** menggunakan Flutter dengan menambahkan **Navbar (BottomNavigationBar)** sebagai navigasi utama. Navbar dibuat dalam file terpisah, yaitu `navbar.dart`, kemudian dihubungkan dengan halaman aplikasi melalui `main.dart`. Aplikasi memiliki tiga halaman utama, yaitu **HomePage**, **MenuPage**, dan **ProfilePage**.

## Fitur Aplikasi
### HomePage
HomePage merupakan halaman utama aplikasi yang berisi:
- Informasi pengguna
- Saldo E-Money
- Beberapa layanan E-Money
- Tombol untuk mengakses halaman Menu dan Profil

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

### ProfilePage
ProfilePage menampilkan identitas mahasiswa sebagai bukti pengerjaan tugas, yang meliputi:
- Nama: Cepin Marsal Javier Hilmi Darmawan
- NIM: 152024056
- Program Studi: Informatika

### Navbar
Navbar dibuat menggunakan widget `BottomNavigationBar` dan disimpan pada file `navbar.dart`. Navbar terdiri dari tiga menu, yaitu Beranda, Menu, dan Profil, yang masing-masing memiliki ikon dan label.
Widget Navbar menerima parameter `currentIndex` untuk menentukan menu aktif dan `onTap` untuk meneruskan aksi ketika menu dipilih. Pemisahan Navbar ke dalam file tersendiri membuat kode lebih terorganisasi dan memungkinkan widget tersebut digunakan kembali.

## Implementasi Navbar
Pembuatan Navbar dilakukan dengan membuat class `Navbar` yang mewarisi `StatelessWidget`. Class ini menerima indeks halaman aktif dan callback dari widget induk.

Contoh bagian kode pada `navbar.dart`:

```dart
class Navbar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const Navbar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Beranda',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.menu),
          label: 'Menu',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profil',
        ),
      ],
    );
  }
}
```

Parameter `currentIndex` digunakan untuk menunjukkan menu yang sedang aktif, sedangkan `onTap` menerima fungsi yang dijalankan ketika pengguna memilih menu Navbar.

## Implementasi Navbar pada main.dart
File `main.dart` digunakan untuk menghubungkan widget Navbar dengan halaman-halaman aplikasi. Daftar halaman disimpan dalam variabel `pages`, sedangkan variabel `selectedIndex` menentukan halaman yang sedang ditampilkan.
Navbar kemudian dipanggil melalui properti `bottomNavigationBar` pada `Scaffold`. Parameter `currentIndex` dihubungkan dengan `selectedIndex`, sementara parameter `onTap` dihubungkan dengan fungsi `_selectPage()`.
Dengan susunan tersebut, Navbar dan halaman aplikasi dapat bekerja secara terintegrasi. Ketika pengguna memilih menu yang berbeda, indeks halaman diperbarui dan tampilan menyesuaikan halaman yang dipilih.

## Struktur Proyek
Struktur proyek setelah implementasi Navbar adalah sebagai berikut:

```text
lib/
├── main.dart
├── pages/
│   ├── homepage.dart
│   ├── menu_page.dart
│   ├── menu_pages.dart
│   └── profile.dart
└── widgets/
    └── navbar.dart
```

Keterangan:
- **`main.dart`**: Mengatur halaman yang ditampilkan dan menghubungkan Navbar dengan halaman aplikasi.
- **`pages/homepage.dart`**: Berisi tampilan halaman utama E-Money.
- **`pages/menu_page.dart`**: Berisi tampilan daftar 12 layanan E-Money.
- **`pages/menu_pages.dart`**: Berisi halaman tujuan dari layanan-layanan E-Money.
- **`pages/profile.dart`**: Berisi halaman profil dan identitas mahasiswa.
- **`widgets/navbar.dart`**: Berisi komponen BottomNavigationBar yang digunakan untuk berpindah antara halaman Beranda, Menu, dan Profil.
Pemisahan file berdasarkan fungsi membuat struktur proyek lebih terorganisasi serta memudahkan pengembangan dan pemeliharaan kode.

## Repository
Source code aplikasi dapat diakses melalui GitHub:
https://github.com/CepinMarsal/IFB355-Pemrograman-Mobile
**Branch:** `tugas-4`
