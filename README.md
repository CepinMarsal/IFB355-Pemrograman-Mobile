# Tugas 5 - Implementasi Google Maps pada Aplikasi E-Money

## Identitas
- **Nama:** Cepin Marsal Javier Hilmi Darmawan
- **NIM:** 152024056
- **Kelas:** BB
- **Mata Kuliah:** IFB355 Pemrograman Mobile

## Deskripsi
Pada Tugas 5 dilakukan pengembangan aplikasi sederhana bertema **E-Money** menggunakan Flutter dengan menambahkan fitur **Google Maps**. Integrasi dilakukan menggunakan package `google_maps_flutter` dan Google Maps API Key yang dikonfigurasi melalui Google Cloud Console. Fitur ini memungkinkan pengguna membuka halaman peta melalui tombol yang tersedia pada HomePage. Peta diarahkan ke sekitar lokasi Institut Teknologi Nasional Bandung (ITENAS) dan dilengkapi marker sebagai penanda lokasi kampus.

## Fitur Aplikasi

### HomePage
HomePage merupakan halaman utama aplikasi yang berisi:
- Informasi pengguna
- Informasi saldo E-Money
- Beberapa layanan E-Money
- Tombol untuk mengakses halaman Menu dan Profil
- Tombol **Buka Google Maps** untuk membuka halaman peta

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

### Google Maps
Google Maps diintegrasikan ke dalam aplikasi menggunakan package `google_maps_flutter`. Halaman peta menampilkan lokasi sekitar ITENAS dengan posisi awal dan tingkat zoom yang telah ditentukan. Marker ditambahkan untuk menandai lokasi kampus dan menampilkan informasi lokasi ketika dipilih.

Halaman Google Maps dibuka melalui tombol **Buka Google Maps** pada HomePage menggunakan navigasi `Navigator.push()`. Dengan demikian, fitur Maps dapat diakses tanpa menambahkan menu baru pada Navbar.

### Navbar
Navbar tetap menggunakan widget `BottomNavigationBar` yang disimpan dalam file `navbar.dart`. Navbar terdiri dari tiga menu, yaitu Beranda, Menu, dan Profil. Fitur Google Maps diakses melalui tombol pada HomePage, sehingga struktur navigasi utama tetap dipertahankan.

## Implementasi Google Maps

### Penambahan Package
Package Google Maps ditambahkan melalui terminal menggunakan perintah:

```bash
flutter pub add google_maps_flutter
```

Setelah package ditambahkan, perintah berikut dijalankan untuk menyiapkan dependency:

```bash
flutter pub get
```

Package `google_maps_flutter` menyediakan widget dan komponen yang diperlukan untuk menampilkan Google Maps pada aplikasi Flutter.

### Konfigurasi Google Cloud Console
Konfigurasi Google Maps dilakukan melalui Google Cloud Console dengan membuat project, mengaktifkan Maps JavaScript API untuk Flutter Web, dan membuat API Key pada menu Credentials. API Key digunakan sebagai kredensial untuk menghubungkan aplikasi dengan layanan Google Maps.

API Key perlu dijaga dan dibatasi sesuai kebutuhan penggunaan aplikasi. Nilai API Key tidak dicantumkan secara terbuka dalam dokumentasi.

### Implementasi Halaman Maps
Halaman Maps dibuat menggunakan widget `GoogleMap`. Posisi awal peta diatur melalui `initialCameraPosition`, sedangkan koordinat `LatLng` digunakan untuk menentukan lokasi awal dan posisi marker. Marker menampilkan informasi nama Institut Teknologi Nasional Bandung (ITENAS).

### Implementasi Tombol Maps pada HomePage
Tombol **Buka Google Maps** ditambahkan pada HomePage dan dihubungkan menggunakan callback `onMapsTap`. Ketika tombol dipilih, fungsi `Navigator.push()` digunakan untuk membuka halaman Google Maps.

Dengan implementasi tersebut, pengguna dapat berpindah dari HomePage menuju halaman peta tanpa mengubah Navbar yang sudah tersedia.

## Struktur Proyek
Struktur proyek setelah implementasi Google Maps adalah sebagai berikut:

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

web/
└── index.html
```

Keterangan:
- **`main.dart`**: Mengatur navigasi aplikasi dan menghubungkan HomePage dengan halaman Google Maps.
- **`pages/homepage.dart`**: Berisi tampilan halaman utama E-Money serta tombol untuk membuka Google Maps.
- **`pages/menu_page.dart`**: Berisi tampilan daftar 12 layanan E-Money.
- **`pages/menu_pages.dart`**: Berisi halaman tujuan dari layanan-layanan E-Money.
- **`pages/profile.dart`**: Berisi halaman profil dan identitas mahasiswa.
- **`widgets/navbar.dart`**: Berisi komponen BottomNavigationBar untuk berpindah antara halaman Beranda, Menu, dan Profil.
- **`web/index.html`**: Berisi dokumen HTML utama untuk menjalankan aplikasi Flutter Web serta konfigurasi pemuatan Google Maps JavaScript API.

Paket `google_maps_flutter` juga tercatat sebagai dependency pada `pubspec.yaml`. Pemisahan file berdasarkan fungsi membantu menjaga struktur proyek tetap terorganisasi dan memudahkan pengembangan aplikasi.

## Menjalankan Aplikasi
Untuk menjalankan aplikasi pada browser Chrome, gunakan perintah berikut:

```bash
flutter pub get
flutter run -d chrome
```

Pastikan konfigurasi Google Maps API sudah sesuai agar peta dapat ditampilkan dengan benar.

## Repository
Source code aplikasi dapat diakses melalui GitHub:

https://github.com/CepinMarsal/IFB355-Pemrograman-Mobile

**Branch:** `tugas-5`
