# Apache File Directory — Roadmap

Known gaps, observed from the repository. Limitations, not a schedule.

## Not gaps

Two things look like omissions and are not:

**It does not generate listings.** Being a hand-written static page is the entire design. Adding
generation would need a server, which would make it the thing it is imitating rather than a
copy of it.

**The markup is not modern.** HTML 3.2, table layout, `valign` attributes. Modernising it would
produce a page that no longer looks like Apache output, which is its only purpose.

Both are recorded here so nobody "fixes" them.

## Real gaps

**Nothing validates the listing.** Links, dates, and sizes are all hand-typed, and no check
exists for a row pointing at a file that is not there. A small script comparing rows against a
directory would catch the most common mistake without changing the static design.

**The example rows are a trap.** The shipped `index.html` includes samples, and forgetting to
delete them leaves a listing advertising files that do not exist. A commented-out block rather
than live rows would make the mistake impossible.

**`icons/` is easy to leave behind.** Copying `index.html` alone breaks every image. Inlining
the icons as data URIs would make the page genuinely single-file, at the cost of readability
and of matching what Apache emits.

**No tests, and none is obviously right.** Defensible for one static file, but there is
currently nothing that would catch a malformed table or a broken doctype.

## Repository hygiene

**Per-repo issue templates override the org defaults.** `.github/ISSUE_TEMPLATE/` still holds
Markdown templates from before the org-level `.github` repository supplied YAML forms. GitHub
prefers the local ones, so this repository does not get the shared set. Removing them would
inherit the org versions.

**The workflow filename differs from its siblings.** Worth a glance when comparing the three
file-directory repositories — see
[Chrome](https://github.com/willtheorangeguy/Chrome-File-Directory) and
[Nginx](https://github.com/willtheorangeguy/Nginx-File-Directory).

## Non-goals

- **Being a real directory index.** Apache already does that.
- **JavaScript.** No behaviour is wanted; adding any would break running from `file://`.
- **A build step.** The value of the project is that deployment is copying two paths.
