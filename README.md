UtsPpb – Aplikasi katalog minuman haus (Daftar & Detail Minuman)

Proyek ini adalah aplikasi Flutter yang menampilkan daftar minuman dari brand Haus.
Aplikasi ini menyediakan tampilan grid modern, fitur pencarian minuman, halaman detail minuman, animasi halus, serta komponen UI yang dirancang secara modular menggunakan widget khusus.

📌 Fitur Utama Aplikasi
1. Grid Daftar Minuman

Menampilkan semua menu minuman dalam bentuk kartu (DrinkCard).

Desain modern dengan radius lembut dan bayangan halus.

Harga & rating berbeda pada setiap minuman.

Animasi masuk (scale) untuk efek yang lebih hidup.

2. Halaman Detail Minuman

Menampilkan gambar minuman ukuran besar.

Menampilkan penjelasan/deskripsi yang menarik.

Menampilkan harga & rating.

Tombol kembali (Back) dengan animasi Hero.

3. Fitur Pencarian Minuman

Mencari minuman berdasarkan nama secara real-time.

Menggunakan TextEditingController dan setState().

4. Desain UI Modern

Warna lembut bernuansa kopi/brown.

Komponen reusable: DrinkCard & DrinkModel.

Menggunakan custom gradient + shadow.

📂 Struktur Folder Utama
lib/
 ├─ models/
 │   └─ drink_model.dart
 ├─ widgets/
 │   └─ drink_card.dart
 ├─ pages/
 │   ├─ grid_page.dart
 │   └─ detail_page.dart
 └─ main.dart

🛠 Teknologi yang Digunakan

Flutter (SDK terbaru)

Dart

Custom Widget

Animations (TweenAnimationBuilder)

Hero Animation

Material Design Components

▶️ Cara Menjalankan Proyek
1. Clone Repository
git clone https://github.com/MuhamadNurRamdoni17/UtsPpb_Muhamad_Nur_Ramdoni

2. Masuk Folder Project
cd UtsPpb_Muhamad_Nur_Ramdoni

3. Get Dependencies
flutter pub get

4. Jalankan Aplikasi
flutter run


Atau jika kamu ingin memilih device tertentu (HP, emulator, Chrome):

flutter run -d chrome
flutter run -d emulator-5554

📱 Minimum Requirements

Flutter SDK terbaru

Android Studio atau VSCode

Device/emulator Android atau browser (Flutter Web)

🧑‍💻 Dibuat oleh

Muhamad Nur Ramdoni
Untuk memenuhi Ujian Tengah Semester (UTS) Mata Kuliah Pemrograman Perangkat Bergerak.
