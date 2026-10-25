# OPERATING PROTOCOL — EXECUTION CONTROL CENTER

## 1. Model kendali
Alur minimum: **Mandat → Rencana → Kesiapan → Pelaksanaan → Bukti → Review → Keputusan → Tindak lanjut**. Gerbang G0–G6 mengikuti 99 Paket Kerja. Keselamatan anak, kesehatan, perlindungan, privasi, dan kepatuhan adalah gerbang wajib.

## 2. Sumber data
- WORK_REGISTER.csv: keadaan terbaru setiap paket.
- AUDIT_FINDINGS.csv: temuan historis; jangan hapus temuan, tutup dengan bukti dan verifikasi.
- APPROVAL_LOG.csv: satu baris per keputusan/gerbang/versi; jangan menimpa keputusan lama.
- Paket kerja Markdown: lingkup, hasil, risiko, dan kriteria awal.
- Dashboard HTML: antarmuka bantu; register yang ditinjau dan disimpan di repository adalah sumber kanonis.

## 3. Pemilik dan pemisahan tugas
Setiap paket memiliki satu pemilik akuntabel aktual. Peran awal di register hanyalah usulan dari dokumen paket kerja, bukan penunjukan seseorang. Reviewer sebaiknya tidak menjadi pelaksana utama. Approver harus memiliki mandat tertulis.

## 4. Jadwal, dependensi, dan biaya
Tanggal tidak boleh direka dari jadwal relatif. Tetapkan tanggal, checkpoint, pemilik dependensi, dan eskalasi setelah rencana disetujui. Dependensi harus menunjuk ID valid atau dijelaskan sebagai eksternal. Anggaran mencatat estimasi, persetujuan, aktual, mata uang, sumber dana, asumsi/kuantitas, biaya satu kali/berulang, dan otorisasi. Kosong berarti belum ditetapkan, bukan nol.

## 5. Indikator dan bukti
Indikator memiliki definisi operasional, baseline, target, sumber data, frekuensi, pemilik data, tanggal ukur, dan keterbatasan. Bukti autentik, bertanggal, terhubung ke WP dan versi hasil, dapat ditelusuri, serta proporsional. Jangan masukkan data identitas, foto, kesehatan, atau catatan individual anak ke register publik.

## 6. Temuan audit
Setiap temuan memiliki ID, deskripsi faktual, tingkat risiko, pemilik tindakan, tenggat, akar masalah, tindakan korektif, bukti penutupan, dan verifikasi reviewer. Temuan kritis terkait keselamatan/kewajiban memicu eskalasi dan penahanan aktivitas berisiko.

## 7. Persetujuan
Catat WP, gerbang, versi hasil, pemohon, reviewer, approver, keputusan, tanggal, alasan/syarat, dan referensi bukti. Pilihan: DISETUJUI, DISETUJUI DENGAN SYARAT (hanya jika aman dan diperbolehkan), DIPERBAIKI, TERTUNDA, atau DITOLAK. Keputusan lama tidak ditimpa.

## 8. Audit trail dan batas MVP
Perubahan harus mencatat siapa, kapan, apa, alasan, dan referensi keputusan. Commit Git dan proses review menjadi bagian jejak repository. localStorage bukan audit trail tahan manipulasi. Dashboard belum memiliki login, role-based access, server sync, database, notifikasi, backup terjadwal, atau log server append-only.

## 9. Ritme kendali awal
- Mingguan: pemilik meninjau progres, dependensi, tenggat, hambatan.
- Dua mingguan: program steward memutuskan eskalasi lintas paket.
- Bulanan: quality lead meninjau sampel bukti dan tren risiko.
- Per gerbang: keputusan eksplisit berdasarkan bukti.
- Triwulanan: tinjau anggaran, manfaat, beban guru, keselamatan, dan prioritas.
Jadwal ini rancangan awal dan perlu disahkan sesuai kapasitas lembaga.


## 8. Register tambahan dan keterlacakan
Gunakan register terpisah berikut sebagai indeks terkendali: OWNER_REGISTER.csv untuk mandat dan penugasan aktual; DEPENDENCY_REGISTER.csv untuk dependensi yang telah diverifikasi; EVIDENCE_REGISTER.csv untuk metadata bukti dan klasifikasi akses; DECISION_LOG.csv untuk keputusan dan dasar kewenangan; CHANGE_LOG.csv untuk jejak perubahan artefak.

ID WP harus stabil dan merujuk ke WORK_REGISTER.csv. Setiap bukti/keputusan/perubahan harus merujuk ke versi artefak yang tepat. Jangan mengisi nama, tanggal, biaya, mandat, atau status verifikasi berdasarkan perkiraan. Gunakan BELUM DITETAPKAN atau kosong sesuai kolom bila belum ada fakta.

## 9. Perlindungan data dan batas publik
Repository ini dapat terlihat publik. Simpan hanya metadata minimal yang aman dipublikasikan. Jangan simpan nama lengkap anak, identitas, foto, rekam kesehatan, catatan insiden individual, data keluarga, tanda tangan, kredensial, atau bukti audit rahasia di GitHub publik. Untuk bukti terbatas, cantumkan ID referensi atau lokasi pada penyimpanan privat yang aksesnya diatur; jangan masukkan tautan yang membocorkan akses.

## 10. Batas integritas audit
CSV dalam repository adalah catatan versi melalui Git, bukan sistem audit yang kebal manipulasi. Gunakan pull request, reviewer independen, commit history, pembatasan akses repository, dan pencadangan sesuai kebijakan. Keputusan yang salah tidak dihapus diam-diam; buat entri koreksi yang merujuk keputusan sebelumnya. Dashboard browser hanya antarmuka bantu, bukan sistem rekaman resmi.
