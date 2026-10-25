# EXECUTION CONTROL CENTER — RA AL-MUNAWAROH

**ID:** RAM-ECC-001  
**Versi:** 0.1.0  
**Status:** MVP / DRAF OPERASIONAL — belum disahkan  
**Sumber induk:** [Roadmap 99](../ROADMAP-99-RA-AL-MUNAWAROH.md) · [99 Paket Kerja](../ROADMAP-99-WORK-PACKAGES.md)

## Tujuan
Pusat kendali pelaksanaan untuk menghubungkan 99 paket kerja dengan pemilik aktual, jadwal kalender, anggaran, dependensi, indikator, bukti, temuan audit, dan keputusan persetujuan. Dokumen yang dibuat tidak otomatis berarti program sudah dijalankan.

## Komponen kanonis
- [Dashboard HTML](./index.html) — antarmuka MVP untuk pencarian, filter, edit data lokal, dan ekspor.
- [Register 99 paket kerja](./data/WORK_REGISTER.csv) — satu baris per paket, tepat 99 baris data.
- [Register temuan audit](./data/AUDIT_FINDINGS.csv) — riwayat temuan; jangan menghapus temuan untuk membuat metrik tampak baik.
- [Log persetujuan](./data/APPROVAL_LOG.csv) — catatan keputusan per versi dan gerbang.
- [Protokol operasi](./OPERATING-PROTOCOL.md) — aturan perubahan, review, akses, dan batas MVP.

## Batasan penting
Dashboard ini adalah **MVP sisi-klien**. Perubahan yang disimpan di browser hanya tersimpan pada browser/perangkat itu; tidak otomatis tersinkron ke GitHub atau pengguna lain, dan log lokal bukan audit log server yang tahan manipulasi. Ekspor data, lakukan review, lalu perbarui register kanonis di repository melalui proses commit/review. Jangan gunakan sebagai sistem produksi multi-pengguna sampai autentikasi, kontrol akses, penyimpanan server, pencadangan, dan audit trail append-only tersedia.

## Pengisian awal wajib
1. Tetapkan nama orang aktual sebagai pemilik, reviewer, approver, dan pengganti.
2. Tetapkan tanggal mulai/tenggat kalender dan kapasitas realistis; jadwal minggu relatif bukan tanggal yang disetujui.
3. Hitung anggaran dari kuantitas, jam kerja, penawaran, biaya satu kali/berulang, sumber dana, dan otorisasi. Kosong bukan berarti Rp0.
4. Verifikasi dependensi dengan ID paket dan jangan melewati gerbang keselamatan atau kewajiban resmi.
5. Tetapkan definisi indikator, baseline, target, sumber data, frekuensi ukur, dan pemilik data.
6. Batasi akses bukti. Jangan masukkan identitas, foto, kesehatan, atau catatan individual anak ke dashboard publik.
7. Tunjuk approver berwenang dan pisahkan reviewer dari pelaksana utama sejauh memungkinkan.

## Status
BELUM DIMULAI → SIAP DIKERJAKAN → BERJALAN → MENUNGGU REVIEW → DISETUJUI. Status alternatif: DIPERBAIKI, TERTUNDA, DIHENTIKAN. DISETUJUI hanya jika keputusan nyata dan bukti tercatat pada log persetujuan.


## Register kendali tambahan
- [Register pemilik aktual](./data/OWNER_REGISTER.csv) — mandat, cakupan WP, delegasi, masa berlaku, dan deklarasi konflik kepentingan.
- [Register dependensi](./data/DEPENDENCY_REGISTER.csv) — relasi antar-WP yang diverifikasi; jangan menganggap dependensi selesai hanya karena paket sebelumnya bernomor lebih kecil.
- [Register bukti](./data/EVIDENCE_REGISTER.csv) — indeks bukti dengan lokasi terkendali, versi, klasifikasi akses, dan verifikasi. Simpan bukti sensitif di sistem privat, bukan repository publik.
- [Log keputusan](./data/DECISION_LOG.csv) — keputusan, dasar kewenangan, alternatif, risiko yang diterima, dan tindak lanjut.
- [Log perubahan](./data/CHANGE_LOG.csv) — dampak perubahan pada artefak, versi, review, persetujuan, dan commit.

## Urutan aktivasi yang disarankan
1. Pimpinan mengesahkan mandat, batas kewenangan, dan daftar peran.
2. Isi OWNER_REGISTER.csv dengan nama aktual dan mandat; lalu tetapkan satu pemilik akuntabel per WP di WORK_REGISTER.csv.
3. Pecah dependensi yang masih berupa teks menjadi baris terverifikasi di DEPENDENCY_REGISTER.csv.
4. Tetapkan tanggal kalender dan anggaran hanya setelah kapasitas, penawaran/kuantitas, sumber dana, dan otorisasi tersedia.
5. Catat bukti, temuan, review, keputusan, dan perubahan pada register masing-masing. Jangan menghapus sejarah.
6. Ekspor dari dashboard lokal, review perubahan, lalu commit register kanonis melalui GitHub. Untuk kerja bersama, gunakan proses pull request/review; dashboard saat ini bukan aplikasi multi-pengguna.

**Aturan status:** bila nama pemilik, tanggal, biaya, bukti, atau otorisasi belum diketahui, biarkan kosong atau tandai belum ditetapkan. Jangan mengisi data rekaan untuk mempercantik dashboard.
