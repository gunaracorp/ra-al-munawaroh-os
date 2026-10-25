# ECC v2 — DATA DICTIONARY & VALIDATION RULES

## Register utama
`data/WORK_REGISTER.csv` adalah sumber kanonis untuk 99 paket. Kolom yang paling relevan pada dashboard: `id`, `agenda`, `pilar`, `pemilik_peran_awal`, `pemilik_aktual`, `tenggat`, `status`, `prioritas`, `anggaran_disetujui`, `mata_uang`, `risiko_utama`, `reviewer`, `approver`, `tanggal_persetujuan`, `keputusan`, dan `versi_hasil`.

## Register terkait
- `data/AUDIT_FINDINGS.csv`: temuan historis, tingkat risiko, pemilik tindakan, tenggat, status, bukti penutupan, dan verifikasi.
- `data/APPROVAL_LOG.csv`: jejak pengajuan keputusan menurut paket, gerbang, versi hasil, reviewer, approver, keputusan, tanggal, alasan, dan bukti.
- `data/DECISION_LOG.csv`: keputusan, mandat, alasan, alternatif, risiko yang diterima, dan tindak lanjut.
- `data/EVIDENCE_REGISTER.csv`: metadata dan lokasi terkendali bukti.
- `data/CHANGE_LOG.csv`: riwayat perubahan artefak dan keputusan review.
- `data/OWNER_REGISTER.csv`: mandat penugasan dan cakupan pemilik.
- `data/DEPENDENCY_REGISTER.csv`: relasi dependensi yang diverifikasi.

## Status yang diizinkan
`BELUM DIMULAI`, `SIAP DIKERJAKAN`, `BERJALAN`, `MENUNGGU REVIEW`, `DIPERBAIKI`, `TERTUNDA`, `DISETUJUI`, `DIHENTIKAN`.

## Aturan pemeriksaan dashboard
- Paket di luar daftar status ditandai `STATUS TIDAK VALID`.
- Jumlah paket yang diharapkan adalah 99; selisih ditampilkan sebagai masalah data.
- ID duplikat ditampilkan sebagai masalah validasi.
- Tenggat diharapkan berbentuk tanggal ISO `YYYY-MM-DD`; tenggat kosong bukan dianggap tidak terlambat melainkan ditandai belum diisi pada baris paket.
- Paket lewat tenggat dikecualikan dari hitungan terlambat bila statusnya `DISETUJUI` atau `DIHENTIKAN`.
- Status `DISETUJUI` perlu kolom keputusan setuju, approver, tanggal persetujuan, dan versi hasil. Dashboard juga mencari catatan persetujuan setuju di `APPROVAL_LOG.csv`.
- Temuan dianggap terbuka kecuali statusnya mengandung istilah `TUTUP`, `SELESAI`, `CLOSED`, atau `DITERIMA`. Konsistensi terminologi status temuan perlu dijaga oleh pengelola register.
- Tingkat risiko tinggi/kritis dideteksi dari kata `TINGGI`, `HIGH`, `KRITIS`, atau `CRITICAL`.

## Batas validasi
Validasi ini bersifat heuristik dan bukan pengganti audit. Sebelum operasional, tetapkan controlled vocabulary untuk status temuan, risiko, mata uang, tanggal, ID, dan keputusan. Tinjau aturan parsing dan uji dengan data nyata yang sudah disanitasi.
