# Apache File Directory — Architecture

## The whole application

```
index.html      the entire thing
icons/          GIF icons per entry type
Dockerfile      Nginx, serving the two above
```

There is no backend, no build step, no dependency, and no JavaScript. The page is a table
inside a single HTML file.

## It is HTML 3.2 on purpose

The document uses the W3C HTML 3.2 Final doctype and the markup style that goes with it —
`valign`, `align="right"`, `&nbsp;` spacers, table layout.

**Do not modernise it.** The point of the project is to reproduce what Apache actually emits,
and Apache's `mod_autoindex` output is exactly this vintage. Converting it to semantic HTML5
with CSS would produce a page that no longer looks like the thing it is imitating, which is
the only thing it is for.

That constraint is why linting and validation here mean "does it still match", not "is it
modern".

## Static means hand-maintained

Nothing scans a directory. Every row exists because someone typed it, and the page has no way
to know whether a link resolves or a size is accurate.

The consequences are worth being explicit about:

| Property                               | Because                        |
| -------------------------------------- | ------------------------------ |
| Works from `file://`, no server needed | Nothing is fetched             |
| Deploys by copying two paths           | There is nothing to build      |
| Goes stale silently                    | Nothing re-reads the directory |
| Cannot show a file that appears later  | The listing is not generated   |

A real Apache server generates this page per request. This is a picture of one.

## Icons are relative paths

Rows reference `icons/folder.gif`, `icons/text.gif`, and so on. That keeps the page portable —
copy both paths anywhere and it works — and it means copying only `index.html` breaks every
image.

Changing the icon set is a matter of replacing the files or editing the `src` attributes; see
[Configuration](./configuration.md).

## Docker

The `Dockerfile` is Nginx serving the static files. It exists for convenience rather than
necessity — any web server, or no server at all, will do.

## Automation

| Workflow             | Purpose                                   |
| -------------------- | ----------------------------------------- |
| `pages.yml`          | Deploys to GitHub Pages on push to `main` |
| `docker-publish.yml` | Publishes the image to GHCR               |
| `gitleaks.yml`       | Scans for committed secrets               |

Dependabot updates Actions and the Docker base image daily. There are no application
dependencies to update, because there are none.

## No tests

There is no test suite, and for a single static file that is a defensible position — the
verification is opening it and looking. HTML validity can be checked with the W3C Markup
Validator, remembering that the target is HTML 3.2 rather than a current standard.
