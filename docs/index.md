# Apache File Directory — Documentation

A static reproduction of the Apache HTTP Server's default directory listing page. One HTML
file, a folder of GIF icons, and no server-side component at all.

```text
Apache-File-Directory/
├── docs/
│   ├── index.md           this page
│   ├── quickstart.md      see it, then make it yours
│   ├── installation.md    there is nothing to install
│   ├── usage.md           editing the listing
│   ├── configuration.md   a row template per file type, and changing icons
│   ├── architecture.md    why it is deliberately retro HTML
│   ├── deployment.md      web server, Docker, GitHub Pages
│   ├── faq.md             does it list files automatically, can I modernise it
│   ├── troubleshooting.md broken icons, stale listings, Docker pulls
│   ├── roadmap.md         known gaps and non-goals
│   └── legal/             privacy policy and terms
├── index.html             the entire application
├── icons/                 GIF icons per entry type
└── Dockerfile             Nginx serving the static files
```

## Pages

- [Quickstart](./quickstart.md) — open it, edit it, publish it
- [Installation](./installation.md) — clone or download; there is no install step
- [Usage](./usage.md) — setting the title and adding rows
- [Configuration](./configuration.md) — the row template for every entry type, and icons
- [Architecture](./architecture.md) — why the markup is HTML 3.2 on purpose
- [Deployment](./deployment.md) — your server, Docker, or GitHub Pages
- [FAQ](./faq.md) — automatic listings, modernising, using it for real
- [Troubleshooting](./troubleshooting.md) — missing icons, wrong links, Docker
- [Roadmap](./roadmap.md) — known gaps and deliberate non-goals

## The one thing to understand

**This page does not read a directory.** It is a hand-written table that looks like a
directory listing. Nothing scans a folder, nothing generates rows, and nothing keeps it in
sync — the listing says whatever you typed.

That is the design, not a limitation to work around. It is why the whole thing is one file
with no server, and why it is useful as a placeholder, a mock-up, or a deliberately
old-fashioned index page.

## Related

The same idea in two other styles:
[Chrome](https://github.com/willtheorangeguy/Chrome-File-Directory) and
[Nginx](https://github.com/willtheorangeguy/Nginx-File-Directory).
