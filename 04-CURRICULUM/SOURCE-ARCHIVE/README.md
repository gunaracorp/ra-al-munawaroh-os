# RAM-004 Source Archive — operating procedure

**Purpose:** controlled storage and integrity verification of primary sources used by RAM-004. A URL, search snippet, or PDF header alone is not a complete archive record.

## Current source candidates

| ID | Document | Official source | Status |
|---|---|---|---|
| REG-SRC-001 | KMA 1503/2025 and attached decision | https://sulteng.kemenag.go.id/files/show/20251020162801surat-penyampaian-kma-kurikulum-2025%2Blampiran_compressed-tzR.pdf | Source identified; binary archive, page inventory, completeness, SHA-256 open |
| REG-SRC-001A | KMA 450/2024 | https://dki.kemenag.go.id/storage/files/KMA%20No.%20450%20Tahun%202024%20-%20Pedoman%20Implementasi%20Kurikulum%20Pada%20Madarsah_ayomadrasah%20%281%29.pdf | Source identified; archive/integrity/completeness open |
| REG-SRC-002 | Keputusan Kepala BSKAP No. 046/H/KR/2025 — CP PAUD Fase Fondasi | https://kurikulum.kemendikdasmen.go.id/file/1753929861_manage_file.pdf | Official primary-source candidate identified; current-version check and archive/integrity open |
| REG-SRC-002-GUIDE | Panduan CP Fase Fondasi, Edisi Revisi 2025 | https://kurikulum.kemendikdasmen.go.id/file/panduan/dokumen/01.%20Panduan%20CP_Fase%20Fondasi_PAUD_14_09_2025_revisi%203.pdf | Official implementation guide; not a substitute for the CP decision |

## Acquisition helper

Run from PowerShell with network access:

```powershell
Set-ExecutionPolicy -Scope Process Bypass
./04-CURRICULUM/SOURCE-ARCHIVE/tools/Acquire-RAM004-PrimarySources.ps1
```

The script downloads candidate PDFs into `04-CURRICULUM/SOURCE-ARCHIVE/files`, validates the PDF header, calculates SHA-256 and byte size, and writes `SOURCE-INTEGRITY-MANIFEST.json`. If Poppler's `pdfinfo` is installed, it also records the PDF page count.

The script does not certify completeness, current legal effect, all attachments, or the accuracy of CP transcription. Those require a human page/attachment inventory and independent check.

### Integrity and completeness protocol

1. Open each downloaded file and verify the document identity, issuing authority, number, title, signature/appendix pages, and legibility.
2. Compare the first and last pages with official source listings; inspect continuity of page numbers and all annexes.
3. Record page count, file size, SHA-256, retrieval date, source URL, and archive path in the source control file.
4. Do not silently overwrite an existing source file. Review it first; use `-AllowExisting` only when replacement is intentional and preserve the prior hash in change history.
5. Transcribe official CP text verbatim from the official decision with printed/PDF page locators. A second checker must compare the transcription against the original.
6. Record every redline row with exact page/section references and disposition: CHANGED, RETAINED, REVOKED/REPLACED, or UNRESOLVED.
7. Keep source documents separate from internal interpretations. Do not label an internal paraphrase as official text.
8. If any download or page check fails, log the error and leave the gate OPEN. Never substitute a secondary summary for the operative text.

## Security and copyright

Use these official source files for internal compliance, verification, and traceability. Preserve source metadata and applicable notices. Do not add personal information about children or families to this archive.

## Approval rule

No RAM-004 source or crosswalk is APPROVED until primary sources are archived and integrity-checked, current applicability is verified, the redline and CP transcription are independently checked, reviewer findings are closed, and the registry is updated.
