[CmdletBinding()]
param(
    [string]$ArchiveRoot = (Join-Path $PSScriptRoot "..\files"),
    [switch]$AllowExisting
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

# Source acquisition helper only. It does not itself certify legal applicability,
# completeness of attachments, or reviewer approval.
$Sources = @(
    @{
        Id = "REG-SRC-001-KMA-1503-2025"
        File = "KMA-1503-2025-KMA-450-amendment-official-kemenag.pdf"
        Url = "https://sulteng.kemenag.go.id/files/show/20251020162801surat-penyampaian-kma-kurikulum-2025%2Blampiran_compressed-tzR.pdf"
        Authority = "Kementerian Agama RI / Kemenag Sulteng hosting"
        RequiredReview = "Confirm cover letter, full KMA, all attachments and page continuity."
    },
    @{
        Id = "REG-SRC-001A-KMA-450-2024"
        File = "KMA-450-2024-Pedoman-Implementasi-Kurikulum-Madrasah.pdf"
        Url = "https://dki.kemenag.go.id/storage/files/KMA%20No.%20450%20Tahun%202024%20-%20Pedoman%20Implementasi%20Kurikulum%20Pada%20Madarsah_ayomadrasah%20%281%29.pdf"
        Authority = "Kementerian Agama RI / Kemenag DKI hosting"
        RequiredReview = "Confirm all pages and attachments; determine which provisions remain operative after KMA 1503/2025."
    },
    @{
        Id = "REG-SRC-002-CP-046-H-KR-2025"
        File = "BSKAP-046-H-KR-2025-CP-PAUD-Fase-Fondasi.pdf"
        Url = "https://kurikulum.kemendikdasmen.go.id/file/1753929861_manage_file.pdf"
        Authority = "BSKAP, Kementerian Pendidikan Dasar dan Menengah"
        RequiredReview = "Verify current operative status and supersession; transcribe Lampiran I CP verbatim."
    },
    @{
        Id = "REG-SRC-002-GUIDE-CP-2025"
        File = "Panduan-CP-Fase-Fondasi-Edisi-Revisi-2025.pdf"
        Url = "https://kurikulum.kemendikdasmen.go.id/file/panduan/dokumen/01.%20Panduan%20CP_Fase%20Fondasi_PAUD_14_09_2025_revisi%203.pdf"
        Authority = "BSKAP, Kementerian Pendidikan Dasar dan Menengah"
        RequiredReview = "Implementation guide only; not a substitute for the CP decision."
    }
)

$ArchiveRoot = [System.IO.Path]::GetFullPath($ArchiveRoot)
New-Item -ItemType Directory -Path $ArchiveRoot -Force | Out-Null
$ManifestPath = Join-Path $ArchiveRoot "SOURCE-INTEGRITY-MANIFEST.json"
$Records = @()

foreach ($Source in $Sources) {
    $Target = Join-Path $ArchiveRoot $Source.File

    if ((Test-Path -LiteralPath $Target) -and -not $AllowExisting) {
        Write-Warning "Existing file left untouched: $Target. Use -AllowExisting only if you intend to replace it."
        $Records += [ordered]@{
            source_id = $Source.Id; url = $Source.Url; local_path = $Target
            result = "SKIPPED_EXISTING"; sha256 = (Get-FileHash -LiteralPath $Target -Algorithm SHA256).Hash
            bytes = (Get-Item -LiteralPath $Target).Length; pdf_header_valid = $null
            page_count = $null; downloaded_utc = $null; required_review = $Source.RequiredReview
        }
        continue
    }

    $Temp = "$Target.download"
    Remove-Item -LiteralPath $Temp -Force -ErrorAction SilentlyContinue
    $DownloadedAt = [DateTime]::UtcNow.ToString("o")

    try {
        Invoke-WebRequest -Uri $Source.Url -OutFile $Temp -MaximumRedirection 10 -TimeoutSec 180
        $Bytes = [System.IO.File]::ReadAllBytes($Temp)
        if ($Bytes.Length -lt 8 -or [System.Text.Encoding]::ASCII.GetString($Bytes, 0, 4) -ne "%PDF") {
            throw "Response is not a PDF (invalid %PDF header). Do not archive an HTML error page as a source."
        }

        Move-Item -LiteralPath $Temp -Destination $Target -Force
        $Hash = (Get-FileHash -LiteralPath $Target -Algorithm SHA256).Hash
        $PageCount = $null
        $PdfInfo = Get-Command "pdfinfo" -ErrorAction SilentlyContinue
        if ($PdfInfo) {
            $Info = & $PdfInfo.Source $Target 2>$null
            $PageLine = $Info | Where-Object { $_ -match "^Pages:\s+\d+" } | Select-Object -First 1
            if ($PageLine -match "^Pages:\s+(\d+)") { $PageCount = [int]$Matches[1] }
        }

        $Records += [ordered]@{
            source_id = $Source.Id; authority = $Source.Authority; url = $Source.Url
            local_path = $Target; result = "DOWNLOADED_PDF_HEADER_VALID"
            sha256 = $Hash; bytes = (Get-Item -LiteralPath $Target).Length
            pdf_header_valid = $true; page_count = $PageCount; downloaded_utc = $DownloadedAt
            required_review = $Source.RequiredReview
            note = "A valid PDF header and checksum do not prove all attachments/pages are complete or legally current."
        }
        Write-Host "Downloaded and hashed: $($Source.Id) | SHA256=$Hash | bytes=$((Get-Item -LiteralPath $Target).Length) | pages=$PageCount"
    }
    catch {
        Remove-Item -LiteralPath $Temp -Force -ErrorAction SilentlyContinue
        $Records += [ordered]@{
            source_id = $Source.Id; authority = $Source.Authority; url = $Source.Url
            local_path = $Target; result = "FAILED"; sha256 = $null; bytes = $null
            pdf_header_valid = $false; page_count = $null; downloaded_utc = $DownloadedAt
            required_review = $Source.RequiredReview; error = $_.Exception.Message
        }
        Write-Warning "Download failed for $($Source.Id): $($_.Exception.Message)"
    }
}

$Records | ConvertTo-Json -Depth 6 | Set-Content -LiteralPath $ManifestPath -Encoding UTF8
Write-Host ""
Write-Host "Manifest written: $ManifestPath"
Write-Host "IMPORTANT: manually verify page completeness, attachment inventory, operative version and CP transcription."
Write-Host "Do not mark any source VERIFIED or APPROVED solely because this script downloaded it."
if ($Records.Where({ $_.result -eq "FAILED" }).Count -gt 0) { exit 2 }
