# Apache File Directory — Installation

There is no installation. It is a static HTML file with a folder of icons — no build step, no
dependencies, no runtime.

## Get the files

**Clone:**

```bash
git clone https://github.com/willtheorangeguy/Apache-File-Directory.git
cd Apache-File-Directory
```

**Or download** the latest `.zip` from
[GitHub Releases](https://github.com/willtheorangeguy/Apache-File-Directory/releases/latest)
and extract it.

## Run it

Open `index.html` in any browser.

That is genuinely all. It works from the filesystem — no local server required — because
nothing on the page fetches anything.

## What you actually need to copy

| Path         | Required                                    |
| ------------ | ------------------------------------------- |
| `index.html` | Yes — this is the application               |
| `icons/`     | Yes — icons are referenced by relative path |

Everything else in the repository is documentation, CI configuration, and packaging.

Copying `index.html` alone gives a page with a broken image in every row, which is the most
common first-time problem.

## Requirements

A text editor, to make the page describe your files rather than the examples. See
[Usage](./usage.md).

## Container image

If you would rather not copy files:

```bash
docker pull ghcr.io/willtheorangeguy/apache-file-directory:main
docker run -d -p 8000:80 ghcr.io/willtheorangeguy/apache-file-directory:main
```

The image name is lowercase; GHCR requires it. See [Deployment](./deployment.md).

## Next

[Quickstart](./quickstart.md), or [Usage](./usage.md) to start editing.
