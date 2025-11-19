# TUGAS 7 - IMPLEMENTASI ROUTES, LOGIN, DAN LOCAL STORAGE

| **Nama** | Khafriza Diaz Permana |
| **NIM** | H1D023072 |
---

## Penjelasan Tiap Bagian Kode

### 1. `lib/main.dart` (Routing dan Theme)

File ini berfungsi sebagai *entry point* aplikasi dan manajemen rute.

| Fitur | Penjelasan |
| :--- | :--- |
| **Named Routes** | Menggunakan `routes: { '/': ..., '/home': ..., '/about': ... }` untuk memetakan nama rute (string) ke widget halaman. |
| **Initial Route** | `initialRoute: '/'` memastikan aplikasi selalu dimulai dari `LoginPage`. |
| **Theme Custom** | Menggunakan `ThemeData.dark().copyWith(...)` untuk menerapkan tema gelap (*Dark Mode*) dengan aksen warna `Colors.amber`, berbeda dengan tema terang bawaan modul. |

### 2. `lib/pages/login_page.dart` (Login & Local Storage)

Halaman ini menangani otentikasi sederhana dan menyimpan sesi.

| Fitur | Penjelasan |
| :--- | :--- |
| **Otentikasi** | Login disimulasikan (`username: 'admin'`, `password: 'admin'`). |
| **Local Storage** | Menggunakan `shared_preferences` untuk menyimpan `username` dan status `isLogin`. |
| **Sesi Persistensi** | `SharedPreferences prefs = await SharedPreferences.getInstance();` digunakan untuk menyimpan data user setelah login berhasil. |
| **Navigasi** | Menggunakan `Navigator.pushReplacementNamed(context, '/home');` agar user tidak bisa kembali ke halaman login melalui tombol *back*. |

### 3. `lib/pages/home_page.dart` (Dashboard)

Halaman utama yang menampilkan data yang dimuat dari penyimpanan lokal.

| Fitur | Penjelasan |
| :--- | :--- |
| **Memuat Data Lokal** | Fungsi `_loadUserData()` dipanggil di `initState` untuk mengambil `username` yang tersimpan dan menampilkannya sebagai sapaan personal: `Welcome back, $_username!`. |
| **Struktur** | Menggunakan widget `SideMenu()` yang dipanggil melalui properti `drawer:` dari `Scaffold`. |

### 4. `lib/components/sidemenu.dart` (Side Menu & Logout)

Widget terpisah yang berisi daftar navigasi dan fitur Logout.

| Fitur | Penjelasan |
| :--- | :--- |
| **Header** | Menampilkan identitas pengguna (**Khafriza Diaz Permana - H1D023072**). |
| **Navigasi** | Menggunakan `ListTile` untuk navigasi ke `/home` dan `/about`. |
| **Fitur Kreatif (Logout)** | Fungsi `_logout()` menghapus semua data sesi (`await prefs.clear();`) dan mengarahkan pengguna kembali ke halaman Login (`/`), memastikan sesi terhapus sepenuhnya (berbeda dengan modul). |

---

## 📸 Screenshot Aplikasi

### 1. Halaman Login
(Initial Route Aplikasi)

![WhatsApp Image 2025-11-19 at 14 56 32 (1)](https://github.com/user-attachments/assets/172e203e-8eb4-47e4-a40d-fb6fa50a1ea7)

### 2. Halaman Home / Dashboard
(Menampilkan username yang dimuat dari Local Storage)

![WhatsApp Image 2025-11-19 at 14 56 32](https://github.com/user-attachments/assets/71fe7d21-6c88-4db1-a318-0d324022d71a)

### 3. Side Menu (Drawer)
(Menampilkan Header Nama/NIM dan Fitur Logout)

![WhatsApp Image 2025-11-19 at 14 56 31 (1)](https://github.com/user-attachments/assets/bd8d330c-fc83-4d95-866f-c3e9c1338728)

### 4. Halaman About App

![WhatsApp Image 2025-11-19 at 14 56 31](https://github.com/user-attachments/assets/1aa0142b-afac-4680-81c0-3598b8a1fdb4)
