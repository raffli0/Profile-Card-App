## **Penjelasan Alur**

| Konsep              | Penjelasan                                                       |
| ------------------- | ---------------------------------------------------------------- |
| **StatelessWidget** | `ProfilePage` → tidak berubah, hanya menampilkan data.           |
| **StatefulWidget**  | `ProfileCardApp` → bisa mengganti tema saat tombol ditekan.      |
| **Theme & Font**    | Didefinisikan di `AppTheme` agar konsisten di seluruh aplikasi.  |
| **Layout**          | Menggunakan `Column`, `Padding`, dan `Card` untuk tampilan rapi. |

---

## **Tugas Akhir**

Kembangkan mini proyek dengan fitur:

1. Tambahkan form sederhana (nama, email, telepon) yang dapat diubah menggunakan `TextField` dan `setState()`.
2. Tambahkan halaman "Tentang" dengan deskripsi aplikasi (navigasi menggunakan `Navigator.push()`).
3. Tambahkan pilihan tema otomatis dengan `ThemeMode.system`.
