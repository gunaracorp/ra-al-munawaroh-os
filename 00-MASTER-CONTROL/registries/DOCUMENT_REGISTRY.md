<!-- RA AL-MUNAWAROH OS | Registry baseline -->
# DOCUMENT REGISTRY
## Register induk dokumen, status, pemilik, dan dependensi

> **Fungsi:** registry ini adalah sumber status utama. Status merekam kondisi artefak yang benar-benar tersedia dan bukti review, bukan sekadar ide yang pernah dibahas.

## 1. Aturan registry

- Satu ID stabil untuk satu artefak kanonis; jangan membuat duplikat tak terkontrol.
- Path menunjukkan lokasi kanonis di repository.
- Versi berubah ketika isi substantif berubah; perubahan status saja dicatat dalam riwayat.
- Pemilik adalah **peran** yang bertanggung jawab, bukan otomatis penulis.
- Status harus sesuai bukti. `SCAFFOLD` bukan `APPROVED`; `DRAFT` bukan `ACTIVE`.
- Kolom tanggal review/persetujuan hanya diisi setelah peristiwa benar-benar terjadi.
- Jangan menyimpan data identitas, catatan kesehatan, foto, atau data pribadi anak di registry publik.
- Periksa tautan/path sebelum menyatakan artefak tersedia.

## 2. Status yang digunakan

| Status | Makna |
|---|---|
| PLANNED | Belum tersedia atau belum terverifikasi |
| SCAFFOLD | Kerangka awal tersedia |
| DRAFT | Draf substantif tersedia, belum disetujui |
| IN_REVIEW | Dalam review formal |
| APPROVED | Disetujui pemilik berwenang; bukti persetujuan dicatat |
| PILOT | Diuji terbatas dengan protokol yang jelas |
| ACTIVE | Disahkan untuk penggunaan rutin pada lingkup yang dinyatakan |
| REVISE | Perlu revisi berdasarkan bukti atau perubahan |
| RETIRED | Digantikan dan disimpan sebagai arsip |

## 3. Status baseline repository

Baseline ini disusun dari file yang dapat diverifikasi saat registry dibuat. Konsep yang pernah dirancang dalam percakapan tidak otomatis dihitung sebagai file repository.

| ID | Judul | Path kanonis | Status baseline | Pemilik peran | Dependensi utama | Bukti / langkah berikutnya |
|---|---|---|---|---|---|---|
| REPO-README | Repository README | `README.md` | DRAFT | Repository steward | RAM-000 | File tersedia; review link/path setelah struktur tumbuh |
| ROADMAP-001 | Master Work Roadmap | `MASTER_WORK_ROADMAP.md` | DRAFT | Program steward | README, registry | Dibuat bersama baseline registry; perlu pembaruan berkala |
| REG-001 | Document Registry | `00-MASTER-CONTROL/registries/DOCUMENT_REGISTRY.md` | DRAFT | Document controller | RAM-000, roadmap | Registry awal; verifikasi setiap path dan status saat modul ditambah |
| RAM-016 | People, Talent & Organizational Culture OS | `16-PEOPLE-TALENT-CULTURE/RAM-016_PEOPLE_TALENT_ORGANIZATIONAL_CULTURE_OS.md` | SCAFFOLD | People & culture lead | RAM-007, 013, 014, 015, 017 | Kerangka awal; isi, review, dan validasi implementasi masih diperlukan |
| RAM-000 | Master Control & Document Architecture | `00-MASTER-CONTROL/RAM-000_MASTER_CONTROL_DOCUMENT_ARCHITECTURE.md` | DRAFT | Architecture owner | Semua RAM | Artefak Markdown kanonis tersedia; review formal, verifikasi dependensi, dan persetujuan masih diperlukan |
| RAM-001 | Foundational Constitution OS | `01-FOUNDATION/RAM-001_FOUNDATIONAL_CONSTITUTION_OS.md` | DRAFT | Mission & Values Steward | RAM-000; RAM-013 | Draf awal tersedia; perlu konsultasi pemangku kepentingan, review ketentuan, dan persetujuan formal |
| RAM-002 | Grand Human Development Model | `02-HUMAN-DEVELOPMENT/RAM-002_GRAND_HUMAN_DEVELOPMENT_MODEL.md` | DRAFT | Human Development Framework Lead | RAM-001, RAM-009, RAM-017, RAM-018 | Draf awal tersedia; sumber empiris, standar resmi, review ahli, dan validasi kontekstual masih diperlukan |
| RAM-003 | Knowledge & Islamic-Universal Knowledge OS | Belum ditetapkan | PLANNED | Knowledge architect | RAM-001, 002 | Konsep pernah dirancang; belum dihitung sebagai file |
| RAM-004 | Curriculum OS | Belum ditetapkan | PLANNED | Curriculum lead | RAM-002, 003, 005, 006 | Konsep pernah dirancang; buat artefak kanonis |
| RAM-005 | Pedagogy & Learning OS | Belum ditetapkan | PLANNED | Pedagogy lead | RAM-002, 004, 006, 007, 017 | Konsep pernah dirancang; buat artefak kanonis |
| RAM-006 | Assessment & Evidence OS | Belum ditetapkan | PLANNED | Assessment & evidence lead | RAM-002, 004, 005, 009 | Konsep pernah dirancang; buat artefak kanonis |
| RAM-007 | Teacher OS | Belum ditetapkan | PLANNED | Teacher development lead | RAM-005, 006, 016, 017 | Konsep pernah dirancang; buat artefak kanonis |
| RAM-008 | Parent & Family OS | Belum ditetapkan | PLANNED | Family partnership lead | RAM-004, 006, 009, 017 | Konsep pernah dirancang; buat artefak kanonis |
| RAM-009 | Child Development & Wellbeing OS | Belum ditetapkan | PLANNED | Child development lead | RAM-001, 002, 006, 017, 018 | Konsep pernah dirancang; buat artefak kanonis |
| RAM-010 | Learning Environment & Campus OS | Belum ditetapkan | PLANNED | Campus & environment lead | RAM-009, 014, 017, 018, 020 | Konsep pernah dirancang; buat artefak kanonis |
| RAM-011 | Technology & AI OS | Belum ditetapkan | PLANNED | Digital governance lead | RAM-001, 012, 013, 017, 020 | Konsep pernah dirancang; buat artefak kanonis |
| RAM-012 | Research, Evidence & Innovation OS | Belum ditetapkan | PLANNED | Research & improvement lead | RAM-003–006, 013, 020 | Konsep pernah dirancang; buat artefak kanonis |
| RAM-013 | Governance, Leadership & Institutional OS | Belum ditetapkan | PLANNED | Governance owner | RAM-001, 014, 015, 020 | Konsep pernah dirancang; buat artefak kanonis |
| RAM-014 | Operations, Quality & Service Excellence OS | Belum ditetapkan | PLANNED | Operations lead | RAM-007–010, 013, 015, 017, 020 | Konsep pernah dirancang; buat artefak kanonis |
| RAM-015 | Finance, Sustainability & Resource Stewardship OS | Belum ditetapkan | PLANNED | Finance & stewardship lead | RAM-013, 014, 020 | Konsep pernah dirancang; buat artefak kanonis |
| RAM-017 | Safeguarding, Child Protection & Ethics OS | Belum ditetapkan | PLANNED | Safeguarding lead | RAM-001, 009–014, 016, 018, 020 | Prioritas lintas sistem; buat artefak kanonis dan jalur eskalasi |
| RAM-018 | Health, Nutrition, Physical Development & Wellbeing OS | Belum ditetapkan | PLANNED | Health & wellbeing lead | RAM-009, 010, 017, 020 | Buat artefak kanonis |
| RAM-019 | Community, Service & Civilization OS | Belum ditetapkan | PLANNED | Community partnership lead | RAM-001, 004, 008, 013, 022 | Buat artefak kanonis |
| RAM-020 | Risk, Resilience, Safety & Business Continuity OS | Belum ditetapkan | PLANNED | Risk & safety lead | RAM-013–018 | Prioritas lintas sistem; buat artefak kanonis |
| RAM-021 | Brand, Communication & Storytelling OS | Belum ditetapkan | PLANNED | Brand & communications lead | RAM-001, 013, 017, 022 | Buat artefak kanonis |
| RAM-022 | Partnerships & Ecosystem OS | Belum ditetapkan | PLANNED | Partnerships lead | RAM-013, 019, 021, 023 | Buat artefak kanonis |
| RAM-023 | Replication, Scaling & Globalization OS | Belum ditetapkan | PLANNED | Scaling & quality lead | RAM-012–015, 020–022 | Buat artefak kanonis setelah model awal diuji |
| RAM-024 | Legacy, Alumni & 100-Year Covenant OS | Belum ditetapkan | PLANNED | Legacy & stewardship lead | RAM-001, 012, 013, 019, 023 | Buat artefak kanonis |

## 4. Document DNA — metadata minimum

Setiap dokumen RAM wajib menyertakan:

- **Document ID** dan judul kanonis
- **Version**, status, tanggal dibuat/diubah
- **Owner role**, reviewer role, approver role (jika ada)
- **Purpose**, scope, intended users, out-of-scope
- **Normative commitments**, empirical claims, promising practices, assumptions/hypotheses — dipisahkan jelas
- **Dependencies** dan artefak turunan
- **Decision rights**, risks, safeguarding/privacy/accessibility considerations
- **Implementation assets** (SOP, checklist, template, instrument, training, data fields)
- **Measures and evidence**, limitations, review date
- **Change history** dan links ke sumber terkait

## 5. Registri turunan yang direkomendasikan

Buat sebagai file terpisah ketika mulai digunakan; jangan mengklaim tersedia sebelum dibuat.

| Registry | Tujuan | Usulan path |
|---|---|---|
| Decision Register | Keputusan, alasan, opsi, pemilik persetujuan | `00-MASTER-CONTROL/registries/DECISION_REGISTER.md` |
| Evidence Register | Klaim, sumber, kualitas, relevansi, batas, keyakinan | `00-MASTER-CONTROL/registries/EVIDENCE_REGISTER.md` |
| Assumption & Hypothesis Register | Asumsi yang perlu diuji | `00-MASTER-CONTROL/registries/ASSUMPTION_HYPOTHESIS_REGISTER.md` |
| Risk Register | Risiko, dampak, kontrol, pemilik, eskalasi | `00-MASTER-CONTROL/registries/RISK_REGISTER.md` |
| Change Register | Permintaan perubahan dan dampaknya | `00-MASTER-CONTROL/registries/CHANGE_REGISTER.md` |
| Artifact & Dependency Map | Hubungan dokumen induk, turunan, dan modul | `00-MASTER-CONTROL/registries/ARTIFACT_DEPENDENCY_MAP.md` |

## 6. Protokol pembaruan

1. Saat artefak dibuat, tambahkan satu baris dengan path aktual dan status `SCAFFOLD` atau `DRAFT`.
2. Saat review dimulai, isi reviewer dan status `IN_REVIEW`.
3. Setelah keputusan formal, catat approver role, tanggal, versi, dan bukti persetujuan; baru ubah status ke `APPROVED`.
4. Setelah pilot, catat konteks, jumlah/jenis pengguna secara agregat, metode, keterbatasan, hasil, dan keputusan tindak lanjut. Hindari data pribadi.
5. Saat path berubah atau dokumen digantikan, perbarui registry dan tautan lama; jangan menghapus jejak historis yang dibutuhkan.
6. Audit tautan dan status secara berkala.

---
**Registry steward:** Document controller yang ditunjuk.  
**Brand steward:** Gugun Gunara — Sang Master Polymath · Sage Universal · The Ultimate Problem Solver.
