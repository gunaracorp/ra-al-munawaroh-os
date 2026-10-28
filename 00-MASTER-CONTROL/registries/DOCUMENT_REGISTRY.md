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
| ROADMAP-99 | Roadmap 99 RA AL-MUNAWAROH — dokumen induk | `ROADMAP-99-RA-AL-MUNAWAROH.md` | DRAFT | Program steward | RAM-000, RAM-001, RAM-002, RAM-013, RAM-017, RAM-020 | 99 agenda dalam sembilan pilar; negara rujukan adalah portofolio studi, bukan peringkat TK; perlu review dan penurunan menjadi kartu kerja |
| ROADMAP-99-VISUAL | Dashboard visual Roadmap 99 | `ROADMAP-99-VISUAL.html` | DRAFT | Program steward / web steward | ROADMAP-99 | Visual HTML responsif dengan pencarian, filter pilar, dan penanda tinjauan lokal; belum berarti situs telah dideploy; status agenda bukan bukti pelaksanaan |
| ROADMAP-99-WP | Paket Kerja 99 Agenda RA AL-MUNAWAROH | `ROADMAP-99-WORK-PACKAGES.md` | DRAFT | Pemilik program dan document controller | ROADMAP-99, RAM-000, RAM-013, RAM-017, RAM-020 | 99 paket kerja dengan pemilik berbasis peran, dependensi, jadwal relatif, kerangka biaya, indikator, risiko, bukti, dan approval; pemilik aktual, tanggal, biaya, target, serta persetujuan masih harus ditetapkan |
| RAM-ECC-001 | Execution Control Center — pusat kendali 99 paket kerja | `EXECUTION-CONTROL-CENTER/` | DRAFT | Program steward / operations lead | ROADMAP-99-WP, RAM-013, RAM-014, RAM-017, RAM-020 | Dashboard MVP lokal, register CSV 99 paket, template temuan audit dan log persetujuan; belum multi-pengguna/server-sync; pemilik aktual, tanggal, anggaran, indikator, reviewer, dan approver perlu ditetapkan |
| RAM-ECC-URG-001 | 30-Day Readiness Plan | `EXECUTION-CONTROL-CENTER/URGENT-30-DAY-READINESS-PLAN.md` | DRAFT | Program steward / operations lead | RAM-017, RAM-020, RAM-ECC-001 | Jadwal relatif; bukan bukti readiness |
| REG-DEC-001 | Decision Register | `00-MASTER-CONTROL/registries/DECISION_REGISTER.md` | DRAFT | Document controller | RAM-013, RAM-ECC-001 | Template keputusan; belum ada persetujuan aktual |
| REG-EVD-001 | Evidence Register | `00-MASTER-CONTROL/registries/EVIDENCE_REGISTER.md` | DRAFT | Evidence lead | RAM-012, RAM-ECC-001 | Template bukti; sumber lokal perlu diverifikasi |
| REG-AH-001 | Assumption & Hypothesis Register | `00-MASTER-CONTROL/registries/ASSUMPTION_HYPOTHESIS_REGISTER.md` | DRAFT | Program steward | RAM-012, RAM-ECC-001 | Asumsi perlu diuji dan ditinjau |
| REG-RSK-001 | Risk Register | `00-MASTER-CONTROL/registries/RISK_REGISTER.md` | DRAFT | Risk & safety lead | RAM-020, RAM-ECC-001 | Risiko awal; skor dan kontrol aktual belum dinilai |
| REG-CHG-001 | Change Register | `00-MASTER-CONTROL/registries/CHANGE_REGISTER.md` | DRAFT | Document controller | RAM-000, RAM-ECC-001 | Template perubahan; keputusan perlu dicatat |
| MAP-DEP-001 | Artifact & Dependency Map | `00-MASTER-CONTROL/registries/ARTIFACT_DEPENDENCY_MAP.md` | DRAFT | Architecture owner | RAM-000, registry | Peta logis; bukan bukti semua modul tersedia/disahkan |
| REG-001 | Document Registry | `00-MASTER-CONTROL/registries/DOCUMENT_REGISTRY.md` | DRAFT | Document controller | RAM-000, roadmap | Registry awal; verifikasi setiap path dan status saat modul ditambah |
| RAM-016 | People, Talent & Organizational Culture OS | `16-PEOPLE-TALENT-CULTURE/RAM-016_PEOPLE_TALENT_ORGANIZATIONAL_CULTURE_OS.md` | SCAFFOLD | People & culture lead | RAM-007, 013, 014, 015, 017 | Kerangka awal; isi, review, dan validasi implementasi masih diperlukan |
| RAM-000 | Master Control & Document Architecture | `00-MASTER-CONTROL/RAM-000_MASTER_CONTROL_DOCUMENT_ARCHITECTURE.md` | DRAFT | Architecture owner | Semua RAM | Artefak Markdown kanonis tersedia; review formal, verifikasi dependensi, dan persetujuan masih diperlukan |
| RAM-001 | Foundational Constitution OS | `01-FOUNDATION/RAM-001_FOUNDATIONAL_CONSTITUTION_OS.md` | DRAFT | Mission & Values Steward | RAM-000; RAM-013 | Draf awal tersedia; perlu konsultasi pemangku kepentingan, review ketentuan, dan persetujuan formal |
| RAM-002 | Grand Human Development Model | `02-HUMAN-DEVELOPMENT/RAM-002_GRAND_HUMAN_DEVELOPMENT_MODEL.md` | DRAFT | Human Development Framework Lead | RAM-000, RAM-001; related: RAM-004–RAM-009, RAM-017, RAM-018 | Header dokumen menyatakan dependensi utama RAM-001 dan RAM-000; modul terkait dipisahkan dari dependensi fondasional. Sumber empiris, standar resmi, review ahli, dan validasi kontekstual masih diperlukan |
| RAM-003 | Knowledge Architecture — Arsitektur Pengetahuan dan Integrasi Ilmu | `03-KNOWLEDGE-ARCHITECTURE/RAM-003_KNOWLEDGE_ARCHITECTURE.md` | DRAFT | Knowledge Architect | RAM-000, RAM-001; conceptual input: RAM-002 | Draf v0.1.0 tersedia di repository; sumber regulasi/ilmiah dan contoh register perlu diverifikasi; review formal dan persetujuan belum dilakukan |
| RAM-004 | Curriculum OS | `04-CURRICULUM/RAM-004_CURRICULUM_OS.md` | DRAFT | Curriculum Lead | RAM-000, RAM-001, RAM-002, RAM-003 | Draf v0.1.0 tersedia di repository; perlu verifikasi regulasi/kurikulum resmi, review ahli, pemetaan capaian, dan persetujuan formal |
| RAM-004-REG-001 | Regulatory Alignment Register | `04-CURRICULUM/RAM-004-REGULATORY-ALIGNMENT-REGISTER.md` | DRAFT | Curriculum Lead / Regulatory Research Lead | RAM-003, RAM-004 | Register diperluas dengan temuan dan tautan artefak turunan; naskah lengkap KMA 1503/2025 beserta lampiran dan review ahli masih wajib |
| RAM-004-REG-002 | Regulatory Compliance Matrix | `04-CURRICULUM/RAM-004-REG-002_REGULATORY-COMPLIANCE-MATRIX.md` | DRAFT | Curriculum Lead / Regulatory Research Lead | RAM-003, RAM-004, RAM-004-REG-001 | Matriks area regulasi, implikasi desain, bukti dan gap; bukan pendapat hukum; telaah naskah lengkap KMA 1503/2025 masih terbuka |
| RAM-004-ART-002 | CP Foundation Crosswalk | `04-CURRICULUM/RAM-004-ART-002_CP-FOUNDATION-CROSSWALK.md` | DRAFT | Curriculum Lead | RAM-004, RAM-004-REG-001, RAM-004-REG-002, RAM-003 | Pemetaan elemen CP ke tujuan/pengalaman/bukti; perlu mengunci versi CP resmi dan verifikasi teks verbatim sebelum persetujuan |
| REG-SRC-001 | KMA 1503/2025 Controlled Source Record | `04-CURRICULUM/SOURCE-ARCHIVE/REG-SRC-001_KMA-1503-2025_SOURCE-CONTROL.md` | SOURCE IDENTIFIED — ARCHIVE PENDING | Regulatory Research Lead | RAM-004-REG-001, RAM-004-REG-003 | Official PDF source identified; binary not yet committed because retrieval failed; integrity checks remain open |
| REG-SRC-002 | CP PAUD Source Control | `04-CURRICULUM/SOURCE-ARCHIVE/REG-SRC-002_PAUD-CP-FOUNDATION_SOURCE-CONTROL.md` | SOURCE IDENTIFIED — VERSION LOCK PENDING | Curriculum Lead | RAM-004-ART-002, RAM-004-ART-003 | Official BSKAP PDF identified; current-version verification and verbatim text transcription remain open |
| RAM-004-REG-003 | KMA 450/2024 vs 1503/2025 Change Log | `04-CURRICULUM/RAM-004-REG-003_KMA-450-vs-1503_CHANGE-LOG.md` | DRAFT — PARTIAL COMPARISON | Regulatory Research Lead | RAM-004-REG-001, RAM-004-REG-002, REG-SRC-001 | Evidence-bounded preliminary comparison; clause-level redline pending full source archive |
| RAM-004-REV-001 | Expert Review & Approval Pack | `04-CURRICULUM/REVIEWS/RAM-004-EXPERT-REVIEW-PACK.md` | READY FOR REVIEWER INPUT | Curriculum Lead / Governance Owner | RAM-004-REG-002, RAM-004-REG-003, RAM-004-ART-002, RAM-004-ART-003 | Reviewer checklist and decision record template; no external review or approval claimed |
| RAM-004-ART-003 | Competency & Learning Outcome Map | `04-CURRICULUM/RAM-004-ART-003_COMPETENCY-LEARNING-OUTCOME-MAP.md` | DRAFT | Curriculum Lead | RAM-002, RAM-003, RAM-004, RAM-004-REG-001, RAM-004-REG-002, RAM-004-ART-002, RAM-006, RAM-007, RAM-009, RAM-017, RAM-018 | Peta kompetensi internal dan hasil belajar kontekstual; bukan rumusan resmi pemerintah; perlu review ahli dan validasi CP
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


## 10. RAM-004 source verification status — 2026-10-29

**Control decision: RAM-004 regulatory/CP gate remains OPEN; no APPROVED status is authorized.** The following paths were checked/updated on branch `main`; the source binary archive and independent expert review remain outstanding.

| Artifact | Canonical path | Current status after update | Evidence / blocker |
|---|---|---|---|
| RAM-004-REG-001 | `04-CURRICULUM/RAM-004-REGULATORY-ALIGNMENT-REGISTER.md` | DRAFT — SOURCE REVIEW REQUIRED | Official source pointers recorded; full primary archive and clause review remain open |
| RAM-004-REG-002 | `04-CURRICULUM/RAM-004-REG-002_REGULATORY-COMPLIANCE-MATRIX.md` | DRAFT — CONTROLLED DESK REVIEW | Gate table added; no compliance claim until primary-text citations are completed |
| RAM-004-REG-003 | `04-CURRICULUM/RAM-004-REG-003_KMA-450-vs-1503_CHANGE-LOG.md` | DRAFT — PARTIAL COMPARISON; FULL TEXT REVIEW REQUIRED | Exact clause-level redline not yet possible without archived complete source texts |
| RAM-004-ART-002 | `04-CURRICULUM/RAM-004-ART-002_CP-FOUNDATION-CROSSWALK.md` | DRAFT — FOR EXPERT REVIEW | Current CP version, verbatim transcription and independent check remain open |
| RAM-004-ART-003 | `04-CURRICULUM/RAM-004-ART-003_COMPETENCY-LEARNING-OUTCOME-MAP.md` | DRAFT — FOR EXPERT REVIEW | Outcome-to-CP traceability cannot be called complete until CP source lock closes |
| RAM-004-GAP-001 | `04-CURRICULUM/REVIEWS/RAM-004-SOURCE-VERIFICATION-GAP-REGISTER.md` | OPEN — BLOCKING GATES | Central gap register; see individual closure evidence requirements |
| RAM-004 expert review request | https://github.com/gunaracorp/ra-al-munawaroh-os/issues/1 | REQUEST OPEN; NO REVIEW EVIDENCE | Request is not a completed review or approval |

### Status governance
- Do not change any listed artifact to `APPROVED` until all mandatory gates are evidenced and findings are closed.
- Update this registry again after the PDFs, checksums, CP lock, redline, and reviewer decision actually exist.
- Any official text and internal RA interpretation must remain distinct in all dependent documents.


## 11. Source acquisition tooling and CP decision lead — 2026-10-29

| Artifact | Canonical path | Status | Notes |
|---|---|---|---|
| RAM-004 source archive procedure | `04-CURRICULUM/SOURCE-ARCHIVE/README.md` | AVAILABLE — PROCEDURE | Defines acquisition, integrity, completeness and approval rules; does not imply source binaries are present |
| RAM-004 source acquisition helper | `04-CURRICULUM/SOURCE-ARCHIVE/tools/Acquire-RAM004-PrimarySources.ps1` | COMMITTED — NOT EXECUTED HERE | Downloads candidate PDFs, validates PDF header, computes SHA-256/size, optionally records page count with `pdfinfo`; manual completeness and applicability checks remain mandatory |
| REG-SRC-002 CP source control | `04-CURRICULUM/SOURCE-ARCHIVE/REG-SRC-002_PAUD-CP-FOUNDATION_SOURCE-CONTROL.md` | SOURCE IDENTIFIED — ARCHIVE/VERSION CHECK OPEN | Identifies official BSKAP decision 046/H/KR/2025 and revised 2025 guide; current operative status, binary archive, hash, verbatim transcription and independent second check remain open |
| REG-SRC-001 KMA 1503 source control | `04-CURRICULUM/SOURCE-ARCHIVE/REG-SRC-001_KMA-1503-2025_SOURCE-CONTROL.md` | SOURCE IDENTIFIED — BINARY ARCHIVE NOT YET COMMITTED | Indexed official text provides additional wording from Lampiran I, page 5; full source and page comparison still open |

**Registry rule:** a committed download script is not an archived source. No source integrity or legal status is upgraded until its generated manifest, PDF, page inventory and manual checks are reviewed and committed.


## 12. Blocking source-acquisition issue — 2026-10-29

The execution checklist is tracked in [Issue #2 — archive primary curriculum sources and lock CP](https://github.com/gunaracorp/ra-al-munawaroh-os/issues/2). The issue is OPEN. Its checklist is not marked complete by the act of creating it. The source acquisition helper is committed but unexecuted; source binaries, checksums, complete redline, CP verbatim transcription/second check, and expert review remain open. No approval status change is authorized.


## 13. Pedagogy, assessment, staff, family and digital product artifacts — 2026-10-29

| ID | Canonical path | Status | Dependencies / next gate |
|---|---|---|---|
| RAM-005 | `05-PEDAGOGY/RAM-005_PEDAGOGY_LEARNING_OS.md` | DRAFT v0.1.0 | Depends on verified RAM-004/CP; expert review, teacher usability review, safeguarding/privacypolicy and pilot required |
| RAM-006 | `06-ASSESSMENT/RAM-006_ASSESSMENT_EVIDENCE_OS.md` | DRAFT v0.1.0 | Define secure data governance and verify curriculum traceability before use |
| RAM-007 | `07-TEACHER/RAM-007_TEACHER_OS.md` | DRAFT v0.1.0 | Validate staffing roles, SOPs, training and workload with school leadership and teachers |
| RAM-008 | `08-FAMILY/RAM-008_PARENT_FAMILY_OS.md` | DRAFT v0.1.0 | Review communications, complaint and emergency pathways with family representatives |
| RAM-009 | `09-CHILD-DEVELOPMENT/RAM-009_CHILD_DEVELOPMENT_WELLBEING_OS.md` | DRAFT v0.1.0 | Review with PAUD/RA and safeguarding/health roles; not a diagnostic instrument |
| RAM-017 | `17-SAFEGUARDING/RAM-017_SAFEGUARDING_CHILD_PROTECTION_ETHICS_OS.md` | DRAFT — HIGH-PRIORITY REVIEW REQUIRED | Validate current Indonesian requirements, designate responsible people, create and test operational SOPs |
| RAM-DIG-PRD-001 | `25-DIGITAL/RA-AL-MUNAWAROH-DIGITAL-PLATFORM-PRD.md` | DRAFT v0.1.0 | Product requirements only; choose stack after repo audit, privacy/security review and owner decisions |


| RAM-DIG-ARCH-001 | `25-DIGITAL/RAM-DIG-ARCH-001_WEBSITE_IMPLEMENTATION_BLUEPRINT.md` | DRAFT v0.1.0 | Public website route/content contract, accessibility/privacy gates and technical discovery checklist; actual stack/deployment discovery remains pending |

**Implementation note:** The files above were committed to branch `main` during the 2026-10-29 work session. These are substantive first drafts, not approved operational policies. RAM-004 regulatory and CP verification remains an upstream blocker for curriculum-dependent claims. Website MVP-1 can proceed in parallel using only verified institutional facts and approved public content; the private portal must not collect child-level sensitive data until governance and security gates are met.
