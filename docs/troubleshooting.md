# Apache File Directory — Troubleshooting

## Every icon is a broken image

`icons/` was not copied alongside `index.html`. Icons are referenced by relative path, so both
paths have to travel together.

This is the most common problem, and it looks alarming while being entirely cosmetic — the
links still work.

## A link goes nowhere

Every link is hand-written, so nothing validates it. Check that:

- The `href` matches the real filename, including case on a case-sensitive server.
- The path is relative to where `index.html` actually sits, not to where you edited it.
- You are not looking at a leftover example row.

## The listing shows files that are not there

Leftover example rows from the shipped file. Delete every row you did not customise — see
[Usage](./usage.md).

## `docker pull` fails with a name error

Use lowercase:

```bash
docker pull ghcr.io/willtheorangeguy/apache-file-directory:main
```

GHCR requires lowercase image names, so the capitalised repository name does not work.

## The container starts but the page is blank

Check you are on the mapped port:

```bash
docker run -d -p 8000:80 ghcr.io/willtheorangeguy/apache-file-directory:main
```

The container serves on 80 internally; the example maps it to 8000 on the host. Then use
<http://localhost:8000/>.

## The parent directory link is missing

That row ships commented out. Remove the surrounding `<!--` and `-->` to enable it — see
[Usage](./usage.md).

## The parent link points at the wrong place

Its default target is `../`, a relative path. If your page is not one level deep, replace it
with the real path.

## The page looks wrong in the browser

Check the doctype is intact. The page is HTML 3.2 on purpose, and the layout depends on
table-based markup that browsers treat differently in quirks mode. An editor that
"helpfully" modernises the markup will change the appearance — see
[Architecture](./architecture.md).

## GitHub Pages is not updating

`docs.yml` deploys on push to `main`. Check the Actions tab; the badge in the README reflects
the last run.

## The dates and sizes are wrong

They are plain text and nothing computes them. Whatever you typed is what shows.
