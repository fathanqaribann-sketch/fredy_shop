# Fredy Shop - Aplikasi Belanja Modern

## Ringkasan

Fredy Shop adalah aplikasi belanja seluler yang dirancang dengan indah, dibangun dengan Flutter. Aplikasi ini bertujuan untuk memberikan pengalaman pengguna yang modern, intuitif, dan menarik secara visual, mulai dari login hingga checkout. Aplikasi ini memiliki animasi yang halus, tipografi yang bersih, dan arsitektur yang kuat.

## Gaya, Desain, dan Fitur

Versi ini mencakup fitur-fitur inti berikut:

*   **Struktur Proyek:**
    *   Kode diatur berdasarkan fitur (`/lib/src/features`).
    *   Menggunakan `go_router` untuk navigasi deklaratif.
    *   Tema Terpusat dengan `google_fonts`.

*   **Layar Login (`login_screen.dart`):**
    *   **Tata Letak Visual:** Desain yang bersih dan modern dengan latar belakang gradien.
    *   **Animasi Lottie:** Menampilkan animasi `shopping_cart.json` yang menarik.
    *   **Tipografi:** Menggunakan font kustom `GoogleFonts.oswald` untuk judul aplikasi "Fredy Shop" yang mencolok.
    *   **Input Pengguna:** Kolom input email dan kata sandi yang telah ditata gayanya dengan ikon dan sudut membulat.
    *   **Tombol:** Tombol "Login" yang ditinggikan dan ditata gayanya.
    *   **Navigasi:** Logika dasar untuk menavigasi ke `/home` setelah login berhasil (saat ini tanpa validasi nyata).

*   **Layar Beranda (`home_screen.dart`):**
    *   Layar placeholder sederhana dengan tombol "Logout" untuk menavigasi kembali ke layar login.

*   **Manajemen Tema (`main.dart`):**
    *   Menggunakan `ThemeData` dengan `ColorScheme.fromSeed` untuk skema warna Material 3.
    *   Mengintegrasikan `google_fonts` untuk `TextTheme` yang konsisten di seluruh aplikasi.

## Rencana Saat Ini: Membangun Kembali Animasi & Memastikan Stabilitas

Tujuan utama sekarang adalah untuk dengan hati-hati mengintegrasikan kembali animasi ke dalam `login_screen.dart` sambil memastikan stabilitas aplikasi dan analisis kode yang bersih.

1.  **Pulihkan Teks "Welcome Back!":**
    *   Tambahkan kembali widget `Text` "Welcome Back!".
    *   Gunakan `TextStyle` yang dijamin aman dari `null` (`theme.textTheme.titleLarge ?? const TextStyle()`) untuk menghindari kesalahan analisis sebelumnya.
    *   Jalankan `flutter analyze` untuk mengonfirmasi tidak ada masalah.

2.  **Integrasikan Kembali `flutter_animate`:**
    *   Tambahkan kembali impor `package:flutter_animate/flutter_animate.dart`.
    *   Tambahkan kembali animasi satu per satu ke setiap widget di `login_screen.dart`.
    *   Setelah menambahkan *setiap* animasi, jalankan `flutter analyze` untuk segera mengidentifikasi konflik atau kesalahan apa pun yang mungkin diperkenalkan oleh paket.

3.  **Selesaikan Layar Login:**
    *   Setelah semua animasi dipulihkan dan analisisnya bersih, layar login akan dianggap selesai dari perspektif visual dan fungsional dasar.
