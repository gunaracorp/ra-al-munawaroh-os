# RAM-DIG-ARCH-002 — DATA GOVERNANCE & ROLE MATRIX
**Version:** 0.1.0 | **Status:** DRAFT — required before live academic data

## 1. Classification
| Class | Examples | Default location | Default rule |
|---|---|---|---|
| PUBLIC | Approved website copy, public contact | Public website/repository when approved | Publish only after owner approval |
| INTERNAL | Generic SOPs, blank templates, non-sensitive planning resources | Private staff workspace; sanitized public repo only if intentionally public | Staff/business need |
| CONFIDENTIAL | Staff records, admissions contact details, internal performance/workflow data | Restricted application/storage | Named roles, purpose limitation, logging |
| RESTRICTED — CHILD | Identifiable child records, developmental observations, health/disability data, family contact, incident reports, identifiable images | Approved secure system only | Strict need-to-know, minimized access, retention and incident controls |

Never place confidential or restricted records in public GitHub, website source, analytics, issue trackers, demo data or screenshots.

## 2. Minimum governance fields for every data element
- Data element name and description
- Purpose and lawful basis / applicable permission
- Data subject and source
- Classification
- Data owner and processor/vendor
- Permitted roles and operations (read/create/update/export/delete)
- Storage and transfer locations
- Retention trigger and duration
- Correction, access, deletion and request handling
- Logging and incident response requirements
- Whether data is necessary for MVP
- Approval and review date

## 3. Draft role-operation matrix
Legend: R read; C create; U update; A approve; X export; D delete; — no default access. Final matrix must be approved before implementation.

| Role | Public content | Curriculum docs | Staff planning | Admissions | Child observations | Safeguarding case |
|---|---|---|---|---|---|---|
| Public visitor | R | Approved public only | — | Public info only | — | Public policy only |
| Content editor | C/U | — | — | — | — | — |
| Approver/pimpinan | A | A within remit | A within remit | Role-based | Only if authorized | Only if authorized |
| Curriculum lead | — | R/C/U | R/C/U | — | Limited to approved need | — |
| Teacher | — | R | R/C/U assigned scope | — | Only assigned children if approved | Report concern; no general case access |
| Admissions officer | — | — | — | R/C/U assigned scope | — | — |
| Safeguarding lead | — | Policy access | — | — | Only if needed for authorized response | Restricted R/C/U |
| Technical administrator | Technical metadata | Technical maintenance | Technical maintenance | No routine content access | No routine content access | No routine content access |
| Auditor | Approved evidence | Time-limited scope | Time-limited scope | Purpose-bound | Explicit authorization only | Explicit authorization only |

This matrix is intentionally conservative. Adapt to actual roles and applicable law; log exceptional access and review it.

## 4. Required controls
- Least privilege, strong authentication, role separation and timely offboarding.
- Audit logs for access to restricted records and administrative changes.
- Encryption in transit and at rest as appropriate; secure key/secret management.
- Retention and deletion schedule with documented exceptions.
- Backups protected from the same compromise as production; restore tests.
- Vendor/processor assessment and breach/incident response.
- No production child data in test, development, AI prompts or public issue trackers.
- Safe exports with authorization, purpose and expiry.
- Review access regularly and after staffing changes.

## 5. Privacy-by-design gate
No module handling child-level data may be enabled until: data inventory is complete; lawful basis and notices are reviewed; access matrix approved; threat model and controls tested; retention/deletion implemented; incident response rehearsed; staff trained; and pilot approval recorded.

## 6. Open questions for owner and leadership
- Who is legally responsible for the institution and data processing?
- Which records are actually required for each process?
- What is the minimum retention needed and what official requirements apply?
- Which system/vendor will host data and in which jurisdiction?
- Who receives privacy requests and incident reports?
- What family communication channels are approved?
- Who approves exceptional access and reviews logs?

## 7. Status
Draft control framework. It is not a legal opinion or authorization to process data. Validate against current Indonesian law and professional advice before use.
