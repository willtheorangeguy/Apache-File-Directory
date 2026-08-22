# Apache File Directory — FAQ

## Does it list my files automatically?

No. It is a hand-written table that looks like a directory listing. Nothing scans a folder,
nothing generates rows, and nothing keeps it in sync — it shows exactly what you typed.

A real Apache server generates this page per request from the filesystem. This is a static
picture of one.

## Then what is it for?

Anywhere you want the appearance of a directory index without a server producing one:

- A placeholder or landing page for a file drop.
- A curated list where you want control over what appears and how it is described.
- A mock-up, screenshot, or demonstration.
- Serving a fixed set of files from static hosting like GitHub Pages, which cannot generate
  indexes.

## Why is the HTML so old-fashioned?

Deliberately. It uses the HTML 3.2 doctype and table-based layout because that is what Apache
actually emits. Modernising it would produce a page that no longer resembles the thing it
imitates, which is the only reason the project exists.

## Can I use it with a real Apache server?

If Apache is generating indexes itself, you do not need this. This is for when you want the
look without the generation — including on hosting that has no directory-listing feature at
all.

## Why are all the icons broken?

You copied `index.html` without the `icons/` folder. Icons are referenced by relative path, so
both need to travel together. See [Installation](./installation.md).

## Why does my `docker pull` fail?

The image name is lowercase — `ghcr.io/willtheorangeguy/apache-file-directory`. GHCR requires
lowercase names, so the capitalised repository name will not work.

## The listing shows files that do not exist

Leftover example rows. The shipped `index.html` includes samples, and deleting the ones you did
not customise is a manual step nothing can check for you. See [Usage](./usage.md).

## Can I change the icons?

Yes — replace the files in `icons/`, or point the `src` attributes elsewhere. See
[Configuration](./configuration.md).

## Is there a version for other servers?

Yes: [Chrome](https://github.com/willtheorangeguy/Chrome-File-Directory) and
[Nginx](https://github.com/willtheorangeguy/Nginx-File-Directory), same idea in different
styles.

## Who owns the design?

The page reproduces the work of the Apache HTTP Server Development Team, owned by the Apache
Software Foundation, and follows the licensing of the server it derives from — Apache
License 2.0.

## Do I need to keep the dates accurate?

Nothing enforces them. They are text in a table, so they are as accurate as you make them —
which is worth remembering if the listing is meant to look convincing.
