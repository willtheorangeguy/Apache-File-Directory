# CLAUDE.md

## Project Overview

Apache File Directory is a static HTML page that replicates the Apache HTTP Server's default file directory listing. The entire application is a single `index.html` file with supporting GIF icons. It uses intentionally retro HTML 3.2 markup for Apache compatibility.

## Repository Structure

```
index.html          # Main application file (the directory listing template)
icons/              # GIF icons for directory entry types (folder, text, etc.)
docs/               # User-facing documentation (usage, customization, legal)
.github/workflows/  # CI: Docker publish, GitHub Pages deploy, Gitleaks secret scanning
.github/agents/     # GitHub agent definitions (lint, test, docs)
Dockerfile          # Nginx-based container for serving the page
```

## Development

**No build step, no dependencies, no automated tests.** This is a single static HTML file.

- **Run locally:** Open `index.html` in a browser, or use Docker:
  ```
  docker build -t afd . && docker run -d -p 8000:80 afd
  ```
- **Test:** Manual browser testing. Validate HTML with the W3C Markup Validator.
- **Lint:** Use Prettier for formatting. DeepSource runs static analysis via `.deepsource.toml`.

## Code Conventions

- **Indentation:** 4 spaces (no tabs)
- **HTML standard:** W3C HTML 3.2 Final DOCTYPE — intentionally retro, do not modernize
- **Comments:** Comment all functions and code sections
- **Commit messages:** Conventional Commits format (`feat:`, `fix:`, `docs:`, `build(deps):`)
- **Versioning:** Semantic Versioning (current: 1.3.0, tracked in `package.json` and `CHANGELOG.md`)
- **License:** Apache License 2.0 — preserve copyright headers

## CI/CD

- **GitHub Pages:** Auto-deploys on push to `main`
- **Docker:** Builds and pushes to `ghcr.io/willtheorangeguy/apache-file-directory` on push to `main`
- **Gitleaks:** Scans for secrets on PRs and pushes
- **Dependabot:** Daily updates for GitHub Actions and Docker base images

## Key Files

| File | Purpose |
|------|---------|
| `index.html` | The entire application |
| `Dockerfile` | Nginx container serving static files |
| `package.json` | Project metadata only (no runtime dependencies) |
| `CONTRIBUTING.md` | Contribution guidelines (GitHub Flow, 4-space indent) |
| `CHANGELOG.md` | Version history |
| `docs/CUSTOMIZATION.md` | Guide for personalizing the template |
