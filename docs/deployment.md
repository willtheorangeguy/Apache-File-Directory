# Apache File Directory — Deployment

Three ways to put the page somewhere. All of them serve the same static files.

## On your own web server

1. Download the latest `.zip` from
   [GitHub Releases](https://github.com/willtheorangeguy/Apache-File-Directory/releases/latest).
2. Extract it.
3. Copy `index.html` **and the `icons/` folder** to the directory you want listed.
4. Edit `index.html` to describe the files that are actually there — see
   [Usage](./usage.md).
5. Upload.

The `icons/` folder is easy to forget. Without it the page renders with broken image
placeholders in every row, because the icons are referenced by relative path.

## With Docker

An image is published to GitHub Packages:

```bash
docker pull ghcr.io/willtheorangeguy/apache-file-directory:main
docker run -d -p 8000:80 ghcr.io/willtheorangeguy/apache-file-directory:main
```

Then open <http://localhost:8000/>.

**The image name is lowercase.** GHCR requires it, so `Apache-File-Directory` will not pull
even though that is the repository name.

The container is Nginx serving the static files, so it is a convenient way to preview the page
rather than a production requirement — any web server will do.

## Building the image yourself

```bash
docker build -t afd .
docker run -d -p 8000:80 afd
```

Useful when you have edited `index.html` and want to see your version rather than the
published one.

## GitHub Pages

The `pages.yml` workflow deploys on every push to `main`, which is how
<https://willtheorangeguy.github.io/Apache-File-Directory/> stays current.

Forking and enabling Pages gives you the same for your own copy — a hosted directory listing
with no server to run.

## Automation

| Workflow             | Trigger        | Does                        |
| -------------------- | -------------- | --------------------------- |
| `pages.yml`          | push to `main` | Deploys to GitHub Pages     |
| `docker-publish.yml` | push to `main` | Builds and pushes to GHCR   |
| `gitleaks.yml`       | pushes and PRs | Scans for committed secrets |

Dependabot updates the Actions and the Docker base image daily.

## There is nothing to configure

No environment variables, no database, no build step. Deployment is copying files. That is the
whole point of the design — see [Architecture](./architecture.md).
