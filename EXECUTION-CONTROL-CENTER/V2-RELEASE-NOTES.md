# ECC v2.0.0 — RELEASE NOTES

**Status:** MVP baca-saja / draf operasional. Belum menjadi sistem produksi multi-pengguna.

## Perubahan utama
- Dashboard `index-v2.html` memuat `WORK_REGISTER.csv`, `AUDIT_FINDINGS.csv`, dan `APPROVAL_LOG.csv` dari raw GitHub saat dibuka/dimuat ulang.
- Ringkasan status, paket berjalan, tenggat terlewat, pemilik aktual, temuan berisiko tinggi, dan status menunggu review.
- Filter berdasarkan teks, pilar, status, tenggat, dan temuan audit.
- Validasi status terhadap daftar yang diizinkan, jumlah 99 paket, ID duplikat, tanggal, kolom pemilik, anggaran, dan kolom minimum persetujuan.
- Ringkasan temuan audit terbuka dan log persetujuan.
- Dashboard tidak menyediakan tombol simpan/edit, tidak mengirim data ke server, dan tidak mengklaim sinkronisasi antar-pengguna.

## Sumber data dan batasan
Sumber kanonis adalah CSV pada folder `data/`. Tampilan hanya mencerminkan data pada pemuatan terakhir; gunakan tombol muat ulang untuk mengambil versi terbaru. Karena data dibaca dari repository publik, jangan menyimpan informasi rahasia atau data pribadi anak dalam CSV publik. Metadata bukti dapat menunjuk ke penyimpanan privat yang memiliki kontrol akses.

Dashboard dapat memerlukan hosting HTTP(S) agar `fetch()` bekerja; membuka file HTML langsung dengan skema `file://` dapat diblokir browser. Raw GitHub merupakan sumber data publik; bila hosting atau konfigurasi CORS berubah, dashboard akan menampilkan pesan kegagalan muat.

## Kontrol persetujuan
Status `DISETUJUI` saja tidak cukup. Dashboard memeriksa apakah keputusan persetujuan, approver, tanggal persetujuan, dan versi hasil terisi. Pemeriksaan ini hanyalah validasi kelengkapan dasar, bukan bukti mandat sah, independensi reviewer, kecukupan bukti, atau kepatuhan hukum. Cocokkan dengan `APPROVAL_LOG.csv` dan `DECISION_LOG.csv` serta lakukan review manusia.

## Kriteria sebelum produksi
1. Autentikasi dan otorisasi berbasis peran.
2. Penyimpanan server dan transaksi atomik; validasi sisi server.
3. Audit trail append-only dan identitas pengguna yang terverifikasi.
4. Alur persetujuan dengan pemisahan tugas dan pengelolaan konflik kepentingan.
5. Backup, pemulihan bencana, monitoring, pengujian keamanan, dan kebijakan retensi.
6. Penyimpanan bukti privat dengan klasifikasi dan akses minimum.
7. Uji pengguna, aksesibilitas, dan persetujuan tata kelola sebelum dipakai untuk keputusan operasional.
