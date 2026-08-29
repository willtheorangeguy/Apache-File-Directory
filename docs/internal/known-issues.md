# Known Issues — Apache-File-Directory

Concrete defects and gaps found while writing this repository's documentation in
August 2026. **Nothing here was changed** — each one needs a code, configuration, or
licensing decision rather than a documentation one.

Ordered by severity. See [`docs/roadmap.md`](../roadmap.md) for the narrative version,
which also covers deliberate non-goals.

**2 open:** 2 low.

## 1. Example rows ship live rather than commented out

**Severity:** Low

**Where:** `index.html`

**What:** Forgetting to delete them leaves a listing advertising files that do not exist.

**Why it matters:** The most common user error with this project, and nothing can check it.

**Suggested fix:** Ship them commented out.

## 2. Per-repo issue templates override the org-level forms

**Severity:** Low

**Where:** `.github/ISSUE_TEMPLATE/`

**What:** Markdown templates predating the org-level YAML forms. GitHub prefers local ones.

**Why it matters:** This repository does not inherit the shared set.

**Suggested fix:** Delete them.

---

## Also, across every repository

**`.bandit` is present on disk but untracked in git.** Verified in PyWorkout, treklogger,
skyscanner-cli, booking-cli, piggy, and aibot — the config file exists locally in each but
`git ls-files` does not know about it, so none of it reached GitHub.

The August 2026 security sweep therefore looks complete locally and landed nowhere. Worth
checking across all 44 repositories it covered.
