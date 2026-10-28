<!-- RAM-003 | Version 0.1.0 | Status: DRAFT — FOR REVIEW -->
# RAM-003 — KNOWLEDGE ARCHITECTURE
## Arsitektur Pengetahuan dan Integrasi Ilmu Pendidikan RA Al Munawaroh

**Document ID:** RAM-003  
**Version:** 0.1.0  
**Status:** DRAFT — FOR REVIEW  
**Classification:** Internal working document  
**Owner role:** Knowledge Architect  
**Accountable governance:** RAM-013 — Governance, Leadership & Institutional OS  
**Primary dependencies:** RAM-000, RAM-001  
**Conceptual input:** RAM-002  
**Related modules:** RAM-004, RAM-005, RAM-006, RAM-012, RAM-013, RAM-017, RAM-020  
**Canonical path:** 03-KNOWLEDGE-ARCHITECTURE/RAM-003_KNOWLEDGE_ARCHITECTURE.md

> Status statement: Dokumen ini adalah rancangan arsitektur pengetahuan. Dokumen ini tidak menyatakan bahwa semua sumber telah dikumpulkan, semua klaim diverifikasi, atau semua keputusan disetujui. Klaim regulasi, ilmiah, dan benchmark harus diverifikasi sebelum digunakan untuk keputusan implementasi.

## 1. Tujuan

RAM-003 menetapkan cara RA Al Munawaroh menemukan, mengklasifikasikan, menilai, menghubungkan, menerapkan, dan memperbarui pengetahuan yang digunakan dalam pendidikan anak usia dini.

Tujuan utama:
1. Memisahkan nilai, kewajiban hukum, bukti penelitian, praktik profesional, pengamatan lokal, asumsi, dan keputusan.
2. Mencegah klaim tanpa sumber atau sumber yang digunakan di luar konteksnya.
3. Menghubungkan pengetahuan dengan kurikulum, pedagogi, asesmen, keselamatan, dan tata kelola.
4. Menjaga jejak asal-usul, peninjauan, keterbatasan, dan perubahan pengetahuan.
5. Mendukung pembelajaran organisasi tanpa mengorbankan privasi atau keselamatan anak.
6. Memungkinkan studi banding internasional yang kontekstual dan dapat diaudit.

## 2. Prinsip pengelolaan pengetahuan

- **Traceability:** klaim penting dapat ditelusuri ke sumber atau diberi label asumsi/hipotesis.
- **Context matters:** usia, bahasa, budaya, populasi, setting, metode, dan batas penelitian dipertimbangkan.
- **No false certainty:** ketidakpastian dan keterbatasan dicatat.
- **Source quality over prestige:** sumber dinilai berdasarkan otoritas, metode, relevansi, kebaruan, dan transparansi.
- **Separate evidence from values:** temuan empiris tidak otomatis menentukan nilai; nilai tidak disamarkan sebagai temuan ilmiah.
- **Human accountability:** keputusan sensitif tetap menjadi tanggung jawab pihak berwenang.
- **Child safeguarding by design:** minimalkan data pribadi; jangan menyimpan identitas atau catatan sensitif anak dalam registri pengetahuan publik.
- **Continuous review:** pengetahuan dapat diperbarui, dibatasi, digantikan, atau ditarik ketika bukti berubah.

## 3. Domain sumber pengetahuan

| Domain | Contoh sumber | Pemeriksaan utama |
|---|---|---|
| Nilai Islam dan etika | Sumber primer, dokumen nilai, kajian kompeten | Ketepatan kutipan, konteks, interpretasi, kewenangan peninjau |
| Regulasi dan kebijakan Indonesia | Peraturan resmi, dokumen kementerian/lembaga, kurikulum resmi | Status berlaku, tanggal, lingkup, perubahan, otoritas penerbit |
| Perkembangan anak | Literatur ilmiah, tinjauan sistematis, panduan profesional | Populasi, metode, batas generalisasi, kualitas bukti |
| Pendidikan dan pedagogi | Penelitian, pedoman praktik, evaluasi program | Konteks, desain studi, relevansi usia, keterbatasan |
| Praktik lokal | Observasi, refleksi guru, masukan keluarga, data program | Prosedur, bias, konteks, privasi, representativitas |
| Benchmark internasional | Dokumen resmi negara, kurikulum, laporan evaluasi | Sumber primer, kesetaraan konteks, adaptasi, risiko |
| Operasi dan keselamatan | Prosedur, audit, evaluasi risiko, catatan anonim | Kewenangan, kerahasiaan, tindakan korektif |
| Teknologi dan AI | Dokumentasi resmi, standar relevan, evaluasi internal | Keamanan, privasi, bias, batas kemampuan, pengawasan |

Jenis sumber yang berbeda memerlukan metode verifikasi berbeda. Kutipan nilai, interpretasi kebijakan, penelitian empiris, dan pengamatan lokal tidak boleh dinilai dengan satu kriteria yang sama.

## 4. Tipe objek pengetahuan

Setiap objek penting diberi satu atau lebih tipe:
- **FACT:** pernyataan faktual dengan sumber pendukung.
- **LEGAL_REQUIREMENT:** kewajiban hukum/kebijakan yang diverifikasi.
- **RESEARCH_FINDING:** hasil penelitian dengan metode dan keterbatasan.
- **PRINCIPLE:** nilai atau prinsip normatif yang disepakati.
- **PROFESSIONAL_GUIDANCE:** panduan badan atau profesi relevan.
- **PRACTICE:** praktik dalam konteks tertentu.
- **PROMISING_PRACTICE:** praktik menjanjikan yang transferabilitasnya belum pasti.
- **LOCAL_OBSERVATION:** pengamatan lokal.
- **INTERPRETATION:** penafsiran sumber atau data.
- **ASSUMPTION:** anggapan belum diverifikasi.
- **HYPOTHESIS:** dugaan yang perlu diuji.
- **DECISION:** keputusan pihak berwenang.
- **METRIC:** ukuran dengan definisi, sumber data, dan batas interpretasi.
- **LESSON_LEARNED:** pembelajaran setelah tindakan atau evaluasi.
- **REQUIREMENT:** kebutuhan sistem internal yang disepakati.

Jangan mengubah asumsi atau hipotesis menjadi fakta hanya karena sering diulang atau masuk ke dokumen.

## 5. Status siklus hidup

| Status | Makna |
|---|---|
| PROPOSED | Diusulkan, belum dinilai |
| UNDER_RESEARCH | Sumber/bukti sedang dikumpulkan |
| VERIFIED | Pemeriksaan yang disyaratkan selesai untuk penggunaan yang dinyatakan |
| UNDER_REVIEW | Menunggu peninjauan |
| APPROVED | Disetujui peran berwenang untuk penggunaan yang dinyatakan |
| IMPLEMENTED | Diterapkan dengan bukti pelaksanaan |
| UNDER_EVALUATION | Sedang dievaluasi |
| SUPERSEDED | Digantikan oleh versi/pengetahuan lain |
| REJECTED | Tidak diterima, alasan dicatat |
| ARCHIVED | Disimpan untuk sejarah, tidak menjadi panduan aktif |

VERIFIED, APPROVED, dan IMPLEMENTED adalah status berbeda. Verifikasi sumber bukan persetujuan kebijakan; persetujuan bukan bukti implementasi.

## 6. Metadata minimum Source & Knowledge Register

Setiap objek penting idealnya mencatat:
- Knowledge ID stabil dan judul/pernyataan ringkas.
- Tipe objek, domain sumber, dan klaim yang didukung.
- URL, DOI, nomor dokumen, atau identitas sumber yang dapat diperiksa.
- Penerbit/penulis, tanggal terbit, tanggal akses, versi, dan status berlaku bila relevan.
- Ringkasan dukungan sumber, konteks, populasi, metode, dan batas penggunaan.
- Kualitas/relevansi bukti beserta alasan penilaian.
- Status, tingkat keyakinan kualitatif, reviewer role, tanggal review, keputusan, dan alasan.
- Dokumen RAM terdampak, risiko, tindakan tindak lanjut, dan riwayat perubahan.

Jangan menyimpan data identitas, foto, rekam kesehatan, atau catatan pribadi anak dalam register umum. Gunakan data agregat/anonim hanya jika diperlukan dan diizinkan.

## 7. Protokol verifikasi

### 7.1 Regulasi dan kebijakan
1. Cari sumber primer resmi.
2. Verifikasi nomor, judul, penerbit, tanggal, status berlaku, dan perubahan.
3. Baca ketentuan relevan dan pahami ruang lingkupnya.
4. Catat interpretasi dan pertanyaan untuk review ahli.
5. Tautkan ke dokumen RAM terdampak.
6. Jadwalkan pemeriksaan ulang ketika ada indikasi perubahan.

### 7.2 Penelitian
1. Tentukan pertanyaan yang hendak dijawab.
2. Prioritaskan tinjauan sistematis atau sumber ilmiah relevan jika tersedia.
3. Periksa metode, populasi, konteks, ukuran hasil, dan keterbatasan.
4. Bedakan korelasi dari sebab-akibat.
5. Catat apakah hasil relevan bagi konteks RA Al Munawaroh.
6. Hindari generalisasi melampaui bukti.

### 7.3 Praktik lokal
1. Jelaskan konteks dan tujuan pengamatan.
2. Pisahkan observasi dari interpretasi.
3. Hindari bias konfirmasi dan klaim kausal yang tidak didukung.
4. Lindungi identitas dan data pribadi.
5. Gunakan temuan untuk refleksi, bukan pelabelan anak/keluarga.

### 7.4 Benchmark internasional
1. Utamakan sumber resmi dan sumber primer.
2. Pelajari kebijakan/praktik spesifik, bukan klaim umum tentang negara.
3. Catat konteks, kelompok usia, prasyarat, sumber daya, dan kondisi implementasi bila tersedia.
4. Identifikasi perbedaan dengan konteks Indonesia.
5. Tentukan bagian yang layak diadaptasi, diuji, atau ditolak.
6. Tetapkan ukuran evaluasi dan kriteria penghentian sebelum uji.

## 8. Resolusi konflik sumber

Saat sumber berbeda:
1. Pastikan sumber membahas pertanyaan, populasi, dan konteks yang sebanding.
2. Periksa tanggal, status resmi, metode, dan kualitas.
3. Untuk kewajiban hukum, verifikasi sumber resmi dan minta review kompeten bila interpretasi tidak jelas.
4. Untuk penelitian, rangkum bukti yang mendukung dan bertentangan.
5. Untuk nilai/interpretasi, dokumentasikan dasar dan kewenangan peninjau.
6. Jika konflik belum selesai, beri status UNDER_REVIEW dan batasi penggunaan.
7. Catat keputusan, alasan, risiko, dan tanggal tinjauan ulang.

Tidak ada satu hierarki sederhana yang menyelesaikan semua konflik: sumber hukum, normatif, empiris, dan observasi lokal menjawab jenis pertanyaan yang berbeda.

## 9. Alur pengetahuan menuju praktik

**PERTANYAAN → PENCARIAN SUMBER → PENILAIAN → SINTESIS → REVIEW → KEPUTUSAN → DESAIN → PILOT (JIKA SESUAI) → EVALUASI → PEMBARUAN**

Jangan melompat dari satu artikel atau ide populer langsung ke kebijakan seluruh lembaga, terutama untuk praktik yang berdampak pada keselamatan, privasi, atau perkembangan anak.

## 10. Hubungan dengan dokumen RAM

- **RAM-000:** ID, Document DNA, registry, status, versioning, dan change control.
- **RAM-001:** mandat nilai, misi, dan prinsip kelembagaan.
- **RAM-002:** kerangka konseptual perkembangan; perlu review sumber dan konteks.
- **RAM-004:** menerjemahkan pengetahuan relevan ke rancangan kurikulum.
- **RAM-005:** menghubungkan pengetahuan dengan pedagogi.
- **RAM-006:** bukti perkembangan dan evaluasi.
- **RAM-012:** metodologi penelitian, evaluasi, dan inovasi.
- **RAM-013:** kewenangan keputusan dan tata kelola.
- **RAM-017:** safeguarding, etika, dan perlindungan data.
- **RAM-020:** risiko dan mitigasi.

Dokumen terkait tidak otomatis menjadi dependensi utama. Registry harus membedakan fondasi yang wajib tersedia dari modul yang hanya berelasi.

## 11. Kerangka studi banding internasional

Portofolio kandidat dapat mencakup Finlandia, Singapura, Jepang, Swedia, Denmark, Belanda, Selandia Baru, Australia, Korea Selatan, dan Italia/Reggio Emilia. Ini adalah kandidat studi, bukan ranking resmi.

Untuk setiap sistem, catat pertanyaan studi, sumber primer/tanggal, praktik spesifik, konteks dan kelompok usia, prasyarat/sumber daya, bukti dan keterbatasan, kesesuaian nilai/regulasi lokal, rencana adaptasi atau alasan menolak, protokol uji, indikator, risiko, kriteria penghentian, reviewer, keputusan, dan tanggal tinjauan ulang.

## 12. Tata kelola AI

AI dapat membantu merangkum sumber, mengusulkan kata kunci, membandingkan dokumen, dan menyusun draf. Namun:
- keluaran AI bukan sumber primer;
- referensi harus diperiksa pada sumber asli;
- AI tidak menetapkan status hukum atau menyetujui kebijakan;
- data pribadi/sensitif anak tidak boleh dimasukkan ke layanan yang tidak diizinkan;
- keputusan keselamatan, diagnosis, disiplin, atau penilaian sensitif tidak boleh diserahkan kepada AI sebagai pengambil keputusan tunggal;
- kesalahan, ketidakpastian, dan kontribusi AI dicatat sesuai kebijakan.

## 13. Indikator mutu

- Proporsi klaim penting yang memiliki sumber terverifikasi.
- Proporsi regulasi dengan status/tanggal pemeriksaan.
- Proporsi keputusan yang menautkan bukti dan alasan.
- Jumlah konflik sumber yang belum diselesaikan berdasarkan tingkat risiko.
- Waktu dari perubahan penting hingga review dokumen terdampak.
- Praktik yang diuji dengan protokol dan evaluasi terdokumentasi.
- Kepatuhan pada minimisasi data dan perlindungan informasi.
- Artefak yang memiliki pemilik, versi, status, dan dependensi konsisten.

Target angka ditetapkan setelah baseline, kapasitas, dan definisi pengukuran disepakati.

## 14. Risiko dan kontrol

| Risiko | Kontrol |
|---|---|
| Sumber tidak akurat/usang | Verifikasi sumber primer, tanggal, dan status |
| Klaim melampaui bukti | Catat metode, konteks, dan batas generalisasi |
| Bias konfirmasi | Cari bukti pendukung dan bertentangan |
| Praktik luar negeri disalin mentah | Analisis konteks dan uji adaptasi |
| Asumsi berubah menjadi fakta | Gunakan tipe dan status eksplisit |
| AI membuat referensi palsu | Verifikasi referensi pada sumber asli |
| Data anak terekspos | Minimisasi, akses terbatas, larangan data sensitif di register publik |
| Pengetahuan tidak diperbarui | Tetapkan pemilik dan jadwal review berbasis risiko |
| Persetujuan disamakan dengan implementasi | Pisahkan APPROVED dan IMPLEMENTED |

## 15. Artefak turunan yang direncanakan

1. RAM-003-ART-001 — Source & Knowledge Register.
2. RAM-003-ART-002 — Evidence Appraisal Checklist.
3. RAM-003-ART-003 — Regulatory Change Watch.
4. RAM-003-ART-004 — International Benchmark Matrix.
5. RAM-003-ART-005 — Claim-to-Source Map.
6. RAM-003-ART-006 — Research-to-Practice Brief.
7. RAM-003-ART-007 — Knowledge Conflict Log.
8. RAM-003-ART-008 — AI-Assisted Research Verification Checklist.

Daftar ini merupakan rencana, bukan klaim bahwa artefak turunannya sudah tersedia.

## 16. Gerbang mutu sebelum persetujuan

- [ ] Selaras dengan RAM-000 dan Document Registry.
- [ ] Selaras dengan nilai dan kewenangan RAM-001.
- [ ] Hubungan dengan RAM-002 dinyatakan sebagai input konseptual, bukan pengganti validasi ilmiah.
- [ ] Skema register diuji pada contoh sumber nyata.
- [ ] Kriteria verifikasi dibedakan menurut tipe sumber.
- [ ] Privasi, safeguarding, aksesibilitas, dan keamanan informasi ditinjau.
- [ ] Pemilik, reviewer, dan approver ditetapkan.
- [ ] Prosedur perubahan dan arsip diuji.
- [ ] Registry dan changelog diperbarui setelah review formal.

## 17. Rencana implementasi

**Tahap A — Konsistensi:** tetapkan path kanonis, status, pemilik, dan hubungan dokumen.  
**Tahap B — Register awal:** masukkan sumber prioritas yang telah diverifikasi, termasuk regulasi dan kurikulum resmi relevan.  
**Tahap C — Uji alur:** uji pencatatan, review, keputusan, dan pembaruan pada contoh nyata.  
**Tahap D — Integrasi:** hubungkan sumber yang dinilai dengan RAM-004, RAM-005, RAM-006, RAM-012, dan RAM-017.  
**Tahap E — Review berkala:** perbarui sumber berdasarkan perubahan regulasi, bukti, risiko, dan kebutuhan lembaga.

## 18. Keputusan terbuka

Belum ditetapkan: alat penyimpanan final, skala penilaian kualitas bukti, jadwal review per tipe sumber, kewenangan persetujuan per domain, dan baseline indikator. Keputusan memerlukan penanggung jawab dan kesepakatan tata kelola.

## Pernyataan penutup

Pengetahuan yang bertanggung jawab bukan kumpulan kutipan yang terlihat meyakinkan. Ia adalah sistem yang membedakan fakta dari asumsi, sumber dari interpretasi, bukti dari nilai, dan persetujuan dari implementasi. RAM-003 membantu RA Al Munawaroh membuat keputusan yang dapat dijelaskan, ditinjau, diperbaiki, dan dipertanggungjawabkan demi anak.

**Status akhir: DRAFT — FOR REVIEW.** Belum disahkan dan belum menjadi bukti bahwa seluruh sumber telah diverifikasi.
