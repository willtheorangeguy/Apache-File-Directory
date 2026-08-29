# Apache File Directory — Quickstart

## 1. See it

The live version is at
<https://williamvdg.me/Apache-File-Directory/>, or run it locally:

```bash
git clone https://github.com/willtheorangeguy/Apache-File-Directory.git
cd Apache-File-Directory
```

Open `index.html` in a browser. No server needed — it is a static file.

## 2. Make it yours

Open `index.html` in a text editor.

**Set the title** on line 6:

```html
<title>Index of /my-files</title>
```

**Add a row per file**, copying the shape of the examples already there:

```html
<tr>
  <td valign="top"><img src="icons/text.gif" alt="[TXT]" /></td>
  <td><a href="notes.txt">notes.txt</a></td>
  <td align="right">2026-08-17 14:30</td>
  <td align="right">1.10K</td>
  <td>&nbsp;</td>
</tr>
```

**Delete the example rows you did not use.** They point at files that do not exist, and
nothing will warn you.

Full walkthrough in [Usage](./usage.md); the row template for every entry type is in
[Configuration](./configuration.md).

## 3. Publish

Copy `index.html` **and the `icons/` folder** to your web server.

Forgetting `icons/` is the usual first mistake — every row then shows a broken image
placeholder, because icons are referenced by relative path.

Other options in [Deployment](./deployment.md): a container image, or GitHub Pages.

## Try it in Docker

```bash
docker run -d -p 8000:80 ghcr.io/willtheorangeguy/apache-file-directory:main
```

Then <http://localhost:8000/>. Note the image name is **lowercase** — GHCR requires it.

## Know this before you use it

It does not list a real directory. It is a hand-written table that looks like one, so it shows
exactly what you typed and nothing more. See [FAQ](./faq.md).
