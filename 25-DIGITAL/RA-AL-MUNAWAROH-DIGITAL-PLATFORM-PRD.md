# RA AL-MUNAWAROH DIGITAL PLATFORM — PRODUCT REQUIREMENTS
**Document ID:** RAM-DIG-PRD-001 | **Version:** 0.1.0 | **Status:** DRAFT

## Visi produk
Bangun dua lapisan yang terhubung tetapi memiliki batas data jelas: (1) website publik untuk identitas, pendekatan, program, fasilitas, berita dan kontak; (2) portal internal privat untuk staf dan operasi, hanya setelah tata kelola, keamanan, peran dan kebutuhan tervalidasi. Website publik bukan tempat menyimpan catatan anak.

## Pengguna
Keluarga calon peserta didik; keluarga aktif; guru; pimpinan/admin; mitra/komunitas; pengunjung umum. Setiap kelompok memiliki kebutuhan akses dan informasi yang berbeda.

## Fase produk
**MVP-1 — Website publik:** beranda; tentang/visi/misi/nilai; pendekatan; program; kurikulum dengan status jelas; lingkungan/fasilitas; komitmen perlindungan anak yang sudah disahkan; berita; pendaftaran; FAQ; kontak; privasi; aksesibilitas. CMS sederhana, SEO dasar, analitik yang meminimalkan data.

**MVP-2 — Portal staf:** autentikasi aman; akses berbasis peran; pustaka dokumen berversi; template rencana belajar/refleksi; daftar periksa mutu dan keselamatan; log perubahan/persetujuan. Jangan masukkan data individual anak pada rilis awal.

**MVP-3 — Fitur keluarga terbatas:** pengumuman, materi disetujui dan kanal pertanyaan/keluhan dengan pemilik/triase. Hindari laporan perkembangan, kesehatan dan unggahan foto sampai kontrol keamanan, persetujuan, retensi dan kebutuhan hukum ditinjau.

**MVP-4 — Modul operasional:** dipertimbangkan setelah kebutuhan terbukti, model ancaman selesai, tata kelola disetujui dan uji keamanan dilakukan.

## Sitemap publik
- / — Beranda
- /tentang — Visi, misi, nilai, sejarah
- /pendekatan — Filosofi belajar
- /program — Program dan pengalaman belajar
- /kurikulum — Kerangka kurikulum dengan status yang jelas
- /lingkungan — Fasilitas dan lingkungan
- /perlindungan-anak — Komitmen/kebijakan publik yang disahkan
- /berita — Kegiatan dan artikel
- /pendaftaran — Proses pendaftaran
- /faq — Pertanyaan umum
- /kontak — Kontak resmi
- /privasi — Kebijakan privasi
- /aksesibilitas — Pernyataan aksesibilitas

## Nonfungsional
Mobile-first, responsif, performa baik pada jaringan lambat, navigasi keyboard, kontras jelas, teks alternatif, HTTPS, secret management, pembaruan, backup, logging dan pemulihan. Minimalkan data, tetapkan retensi, pemberitahuan privasi dan prosedur insiden. Jangan membuat klaim akreditasi, kepatuhan atau hasil tanpa bukti.

## Workflow konten
Penulis membuat draf; pemilik bidang memverifikasi fakta; safeguarding/privacy reviewer memeriksa konten terkait anak; approver mengesahkan; admin memublikasikan. Status: DRAFT, IN_REVIEW, APPROVED_FOR_PUBLICATION, PUBLISHED, RETIRED.

## Batas data
Publik hanya untuk informasi institusi yang disetujui. Jangan masukkan nama lengkap anak, data orang tua, kesehatan, kebutuhan individual, laporan perkembangan, catatan insiden, kredensial, token atau foto tanpa izin yang diperlukan ke repo/website publik.

## Acceptance criteria MVP-1
- [ ] Sitemap dan tujuan halaman disetujui.
- [ ] Konten faktual punya pemilik dan status review.
- [ ] Tidak ada data sensitif anak atau klaim tanpa bukti.
- [ ] Form mengumpulkan data minimum dengan pemberitahuan privasi.
- [ ] Uji responsif, keyboard, kontras, tautan, form dan performa lulus.
- [ ] Domain, hosting, backup, keamanan dan pemilik teknis ditetapkan.
- [ ] Update konten, incident response dan rollback diuji.
- [ ] Pimpinan menyetujui publikasi.

## Keputusan terbuka
Framework, CMS, hosting, domain, autentikasi, basis data, analitik, backup dan retensi dipilih setelah audit repo, kebutuhan pengguna, biaya dan kemampuan tim.

**Riwayat:** v0.1.0 — product requirements awal; DRAFT.