<!-- Logo -->
<h1 align="center">
  <img src="https://raw.githubusercontent.com/willtheorangeguy/.github/main/icons/Apache-File-Directory/logo.png" height="250px" width="400px" alt="Apache File Directory">
  <br>
  Apache File Directory
  <br>
</h1>

<!-- Copy -->
<h4 align="center">The Apache file directory listing page, as a single self-contained HTML file you can drop anywhere.</h4>

<!-- Badges -->
<div align="center">
  <img alt="Docker State" src="https://github.com/willtheorangeguy/Apache-File-Directory/actions/workflows/docker-publish.yml/badge.svg">
  <img alt="GitHub Pages State" src="https://github.com/willtheorangeguy/Apache-File-Directory/actions/workflows/docs.yml/badge.svg">
  <img alt="Gitleaks State" src="https://github.com/willtheorangeguy/Apache-File-Directory/actions/workflows/gitleaks.yml/badge.svg">
  <img alt="GitHub Version" src="https://img.shields.io/github/v/release/willtheorangeguy/Apache-File-Directory">
  <img alt="GitHub Issues" src="https://img.shields.io/github/issues/willtheorangeguy/Apache-File-Directory">
  <img alt="GitHub Pull Requests" src="https://img.shields.io/github/issues-pr/willtheorangeguy/Apache-File-Directory">
</div>

<!-- Navigation -->
<p align="center">
  <a href="#key-features">Key Features</a> •
  <a href="#installation">Installation</a> •
  <a href="#usage">Usage</a> •
  <a href="#documentation">Documentation</a> •
  <a href="#support">Support</a> •
  <a href="#contributing">Contributing</a> •
  <a href="#credits">Credits</a> •
  <a href="#attribution">Attribution</a> •
  <a href="#license">License</a>
</p>

<!-- Hero -->

![screenshot](https://raw.githubusercontent.com/willtheorangeguy/.github/main/icons/Apache-File-Directory/welcome.png)

## Key Features

- A faithful copy of the Apache directory listing page, as static HTML.
- Name, modified date, size, and description columns.
- Icons for folders, links, text files, compressed files, and unknown types.
- No server, no build step, and no dependencies — it is one file plus icons.
- Works on any web server, or as a GitHub Pages site.
- Also published as a container image.

## Installation

```bash
git clone https://github.com/willtheorangeguy/Apache-File-Directory.git
cd Apache-File-Directory
```

Then open `index.html` in a browser. There is nothing to install — see [`docs/quickstart.md`](docs/quickstart.md).

## Usage

Edit `index.html` to list your own files: set the title, then add a table row per file or folder. [`docs/usage.md`](docs/usage.md) walks through it.

## Documentation

Full documentation lives in [`docs/`](docs/index.md):
[Quickstart](docs/quickstart.md) · [Installation](docs/installation.md) · [Usage](docs/usage.md) · [Configuration](docs/configuration.md) · [Architecture](docs/architecture.md) · [Deployment](docs/deployment.md) · [FAQ](docs/faq.md) · [Troubleshooting](docs/troubleshooting.md) · [Roadmap](docs/roadmap.md)

## Support

Open a [GitHub Discussion](https://github.com/willtheorangeguy/Apache-File-Directory/discussions/new) or file an [issue](https://github.com/willtheorangeguy/Apache-File-Directory/issues/new/choose).

## Contributing

Contributions welcome. See the org-wide [Contributing Guide](https://github.com/willtheorangeguy/.github/blob/main/CONTRIBUTING.md) and [Code of Conduct](https://github.com/willtheorangeguy/.github/blob/main/CODE_OF_CONDUCT.md).

## Credits

This software uses the following open source packages, projects, services or websites:

<!-- Credits Table -->
<table>
  <tr>
    <th align="center"><img src="https://applets.imgix.net/https%3A%2F%2Fassets.ifttt.com%2Fimages%2Fchannels%2F2107379463%2Ficons%2Fmonochrome_large.png?w=240&h=240&s=8a19bbc158996d098e2fb18310ba7f33" width="150" height="150" alt="GitHub"/></th>
    <th align="center"><img src="https://www.w3.org/assets/logos/w3c/w3c-no-bars.svg" width="150" height="150" alt="W3C"/></th>
    <th align="center"><img src="https://videos.w3schools.com/files/images/w3schools_logo_500_04AA6D.png" width="150" height="150" alt="W3Schools"/></th>
    <th align="center"><img src="https://avatars.githubusercontent.com/u/47359?s=200&v=4" width="150" height="150" alt="Apache"/></th>
  </tr>
  <tr>
    <td align="center">GitHub</td>
    <td align="center">W3C</td>
    <td align="center">W3Schools</td>
    <td align="center">Apache</td>
  </tr>
  <tr>
    <td align="center"><a href="https://github.com/">Web</a> - <a href="https://github.com/pricing">Plans</a></td>
    <td align="center"><a href="https://www.w3.org">Web</a> - <a href="https://www.w3.org/support/">Donate</a></td>
    <td align="center"><a href="https://www.w3schools.com">Web</a> - <a href="https://www.w3schools.com/pro/index.php">Pro</a></td>
    <td align="center"><a href="https://www.apache.org/">Web</a> - <a href="https://www.apache.org/foundation/contributing.html">Donate</a></td>
  </tr>
</table>

## Attribution

The page this reproduces is the work of the
[Apache HTTP Server Development Team](https://httpd.apache.org/contributors/) and is owned by
the Apache Software Foundation. This project follows the licensing of the HTTP server it
derives from.

## License

Apache License 2.0 — see [`LICENSE.md`](LICENSE.md). Also see the [Privacy Policy](docs/legal/privacy.md) and [Terms and Conditions](docs/legal/terms.md).
