# RAM-DIG-ARCH-001 — WEBSITE IMPLEMENTATION BLUEPRINT
**Version:** 0.1.0 | **Status:** DRAFT — READY FOR TECHNICAL DISCOVERY

## 1. Objective
Turn the public website PRD into a buildable, testable implementation plan without prematurely introducing sensitive child data or asserting unverified institutional facts.

## 2. Recommended release strategy
Build the public information website first as a static/content-led site. Keep the internal portal as a separate later product with separate authentication, data stores and threat model. Do not share an administrative database between public pages and future child records.

## 3. Route and content contract
| Route | Required content blocks | Publication gate |
|---|---|---|
| / | Positioning, concise promise, approach, program highlights, safeguarding commitment, CTA | All claims verified; safeguarding language approved |
| /tentang | Vision, mission, values, institutional story | Owner-approved institutional facts |
| /pendekatan | Play-based approach, Islamic and universal values, inclusion | Pedagogy review; no unsupported outcome claims |
| /program | Program descriptions and example experiences | Curriculum references verified; label draft concepts honestly |
| /kurikulum | Curriculum framework, source/version note, learning principles | Regulatory/CP status clearly stated; no claim of compliance before review |
| /lingkungan | Facilities, access, safety practices | Actual facilities verified; no security-sensitive details |
| /perlindungan-anak | Approved public policy summary and reporting channel | RAM-017 operational review and authorized contact confirmed |
| /berita | Approved news and activities | Image permissions, privacy and fact check |
| /pendaftaran | Steps, eligibility and documents actually required | Admissions process confirmed by management |
| /faq | Questions about program, fees, hours, admissions | Every answer fact-checked; do not invent fees/hours |
| /kontak | Official contacts and verified address/map | Contact/location confirmed by owner |
| /privasi | Data collected, purpose, retention, contact, rights and security | Legal/privacy review before launch |
| /aksesibilitas | Accessibility features and feedback route | Test claims against actual implementation |

## 4. Visual and interaction system
- Bright, calm and welcoming visual language; use color to support meaning, not decoration alone.
- Maintain readable contrast for all text, including text over photography and transparent backgrounds.
- Prefer solid text surfaces or a dark overlay when contrast on imagery is uncertain.
- Clear hierarchy, generous whitespace, large touch targets, visible focus, keyboard navigation and reduced-motion support.
- Mobile-first layout; key actions must work on small screens and low-bandwidth connections.
- Use real approved photography only; otherwise use illustrations or neutral placeholders clearly marked for replacement.
- Avoid exposing children's faces, names, schedules, location patterns or identifying details without appropriate approval and consent.

## 5. Technical discovery checklist before coding
- [ ] Inspect repository for current framework, package manager, build scripts, existing site and deployment config.
- [ ] Identify domain/DNS/hosting owner and deployment target.
- [ ] Confirm whether the website is public-facing and which content is approved for publication.
- [ ] Choose a framework consistent with existing repo and team capability; document rationale.
- [ ] Choose content workflow (Markdown/content files or CMS) based on update frequency and editor skills.
- [ ] Define environment variables and secret handling; never commit credentials.
- [ ] Define redirects, error pages, sitemap, robots policy, metadata and social preview.
- [ ] Define backup, rollback and maintenance ownership.

## 6. Quality gates
### Content
- No invented address, phone, tuition, hours, accreditation, enrollment availability or outcome statistics.
- Draft policies are not presented as active policy.
- Every page has content owner, last-reviewed date and publication approval.

### Accessibility
- Keyboard-only navigation works.
- Focus indicator is visible.
- Color contrast is checked; color is not the sole information carrier.
- Images have meaningful alt text or are marked decorative.
- Headings, labels, form errors and link text are understandable.
- Mobile zoom and text resizing do not break layout.

### Security and privacy
- HTTPS and secure headers are configured by deployment owner.
- No secrets in repository or client bundle.
- Forms collect minimum data, explain purpose and use secure delivery.
- No child-level sensitive data in analytics or logs.
- Dependency and build checks run before deployment.

### Reliability
- Broken-link and build checks pass.
- 404 and error states are useful.
- Backup/rollback steps are documented and tested.
- Owner knows how to update content and respond to an incident.

## 7. Definition of done for public MVP
A responsive website deployed to the owner-approved domain, with approved content for each live page, accessibility and privacy review, successful build/link checks, functioning contact/admissions path, monitoring/backup ownership, and a documented rollback. A repository preview or local HTML file alone is not a production deployment.

## 8. Deferred features
Login, child profiles, attendance, health records, developmental reports, direct messaging about individual children, payment processing and AI-generated child assessments are out of scope for public MVP. Revisit only after separate requirements, legal/privacy review, threat modeling, access controls and testing.

## 9. Current readiness
Product scope and acceptance gates are defined at draft level. Actual implementation begins after repository/stack and deployment discovery, and publication begins only after facts and policies are approved.
