# RAM-DIG-PRD-002 — ACADEMIC & EDUCATION SYSTEM
**Version:** 0.1.0 | **Status:** DRAFT — requirements discovery  
**Scope:** Internal academic operations for RA/TK; not approved for handling live child records

## 1. Product goal
Merancang sistem pendidikan yang membantu staf menjalankan proses akademik secara konsisten, menjaga kesinambungan pembelajaran dan komunikasi keluarga, serta menghasilkan data yang berguna tanpa membebani guru atau mengorbankan privasi anak.

## 2. Product boundary
**Public website:** informasi institusi dan calon keluarga.  
**Academic system:** aplikasi privat, akses berbasis peran, data terkontrol.  
Keduanya tidak boleh berbagi database publik untuk catatan individual anak.

## 3. Proposed modules — staged
### A. Foundation and administration
- User accounts, roles, permissions and audit logs.
- Master data institusi/kelas/tahun ajaran, after policy decisions.
- Document library with version, owner, approval and review dates.
- Announcements with audience and publication approval.

### B. Admissions and enrollment
- Inquiry tracking and admissions workflow.
- Application checklist and status.
- Secure storage for minimum necessary records.
- Clear retention and deletion rules.
- No collection of documents until purpose, access, privacy notice and lawful basis are defined.

### C. Academic planning
- Verified curriculum/CP reference library with source, version, page/section and review status.
- Mapping: official CP → institutional interpretation → learning intention → learning experience → observation/evidence → reflection.
- Weekly/period planning templates.
- Activity/resource library with age suitability, risk notes, accessibility and revision history.
- Approval workflow for curriculum content.

### D. Classroom operation
- Class schedule and staff assignment.
- Attendance workflow, including correction and authorized access.
- Daily routine and handover checklists.
- Incident escalation links to separate restricted workflow; never put incident details in general classroom views.

### E. Observation and learning documentation
- Factual observation notes, context, purpose, follow-up and review date.
- Portfolio/evidence only when justified.
- Individual child records require a separate privacy/security design and approved access matrix.
- No automated diagnosis, child ranking, permanent ability labels or AI-generated high-stakes decisions.

### F. Family partnership
- Approved announcements and learning summaries.
- Meeting schedule and agreed follow-up.
- Secure, private communications for individual matters.
- Complaint/feedback workflow with owner, status and escalation.
- No sensitive child data in email/push notifications or public-facing URLs.

### G. Leadership and quality
- Aggregate operational dashboard.
- Document/policy review due dates.
- Staff training and SOP acknowledgement records.
- Quality improvement actions, owner, due date, evidence and closure.
- Use aggregate indicators by default; suppress small groups where re-identification risk exists.

## 4. User roles (draft)
| Role | Typical access | Restrictions |
|---|---|---|
| System owner | Configuration and governance | Does not automatically need every sensitive record |
| School leader | Operations, approvals, aggregate reports | Child-level access only when role and purpose require |
| Curriculum lead | Curriculum mappings and approved plans | No unrelated admissions/health data |
| Teacher | Assigned class plans and authorized observations | No access to other classes by default |
| Admissions staff | Applications and admissions status | No access to developmental records by default |
| Family/guardian | Only their own child's authorized information, if later enabled | Identity/authority verification required |
| Safeguarding lead | Restricted case workflow according to policy | Strict need-to-know and audit |
| Technical administrator | System maintenance | No routine content access unless necessary and logged |
| Auditor/reviewer | Limited, time-bound access | Purpose-bound and approved |

This is a proposal, not a final access policy. Roles must be reconciled with actual staffing and local requirements.

## 5. Core workflows to specify
- Admissions inquiry → application → review → decision → onboarding.
- Academic year/class setup → curriculum reference verification → planning → review/approval.
- Learning experience → observation → reflection → next support.
- Family meeting → agreed actions → follow-up.
- Incident concern → immediate safety → restricted escalation and authorized follow-up.
- Document change → review → approval → release → archive.
- User lifecycle → provision → role change → disable → audit.

## 6. Minimum data governance
Before live data:
- Inventory each data element and purpose.
- Classify public/internal/confidential/restricted.
- Determine lawful basis, notice/consent as applicable, retention and deletion.
- Define data owner, permitted readers, exports and audit logging.
- Encrypt in transit and at rest where appropriate; manage secrets outside source control.
- Establish backups, restore test, incident response and vendor review.
- Do not use production child data for development or AI testing.
- Do not store identifiable child records in GitHub issues, source files or public analytics.

## 7. MVP recommendation
**Academic MVP-0 (safe first step):** private staff document library, curriculum reference register, planning templates, approvals and improvement-action register. No child-level records.
**Academic MVP-1:** add class/year setup, schedules and attendance only after policy, access, retention and security review.
**Academic MVP-2:** consider observations/portfolios and family-specific access after independent privacy/security review and pilot.
**Deferred:** health records, biometric data, AI assessment/diagnosis, automated high-stakes decisions and unrestricted chat.

## 8. Acceptance criteria before implementation
- [ ] User interviews with leadership, teachers, admissions and family representatives.
- [ ] Approved process maps and role-permission matrix.
- [ ] Data inventory/classification and retention schedule.
- [ ] Security threat model and incident/backup/restore plans.
- [ ] Verified curriculum source model and provenance fields.
- [ ] Accessibility and usability acceptance criteria.
- [ ] Test cases, migration approach, support owner and rollback plan.
- [ ] Pilot scope and approval documented.

## 9. Nonfunctional requirements
Mobile-usable; accessible; responsive on low-bandwidth networks; Indonesian-first language; stable audit trails; versioned content; recoverable backups; least privilege; no secrets in code; exportability and maintainability; explicit errors and support route.

## 10. Open decisions
Framework/database/hosting/authentication, integrations, budget, domain, deployment, support owner and procurement remain unselected pending repository audit and requirements interviews.

## 11. Gate
This PRD does not authorize live processing of child data. First release should focus on public website plus a private staff knowledge/planning workspace with no child-level sensitive records.
