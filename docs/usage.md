# Apache File Directory — Usage

The page is one HTML file containing a table. Each file or folder in the listing is one row.
Using it means editing that table to describe what is actually in your directory.

You need a text editor and nothing else.

## 1. Set the title

Line 6 holds a placeholder directory name. Replace it with yours — it becomes both the browser
tab title and the heading:

```html
<title>Index of /directory</title>
```

## 2. Decide about the parent link

Line 12 holds a commented-out "Parent Directory" row. If this listing sits inside another
directory, uncomment it by removing the surrounding `<!--` and `-->`.

Leave `../` as the target to link relatively, which keeps working if the page moves. Replace it
with a path only if you need an absolute link.

If this is a top-level listing, leave the row commented out.

## 3. Add a row per folder

```html
<tr>
  <td valign="top"><img src="icons/folder.gif" alt="[DIR]" /></td>
  <td><a href="folder/">folder</a></td>
  <td align="right">YYYY-MM-DD HH:MM</td>
  <td align="right">-</td>
  <td>&nbsp;</td>
</tr>
```

| Placeholder                     | Replace with                                     |
| ------------------------------- | ------------------------------------------------ |
| `folder` between the `<a>` tags | The folder name as it should display             |
| `folder/` in `href`             | The actual link                                  |
| `YYYY-MM-DD HH:MM`              | Last modified date — **keep the trailing space** |
| `-`                             | The size, or leave as a dash                     |
| `&nbsp;`                        | A description, or leave blank                    |

## 4. Add a row per file

```html
<tr>
  <td valign="top"><img src="icons/text.gif" alt="[TXT]" /></td>
  <td><a href="text.txt">Textfile.txt</a></td>
  <td align="right">YYYY-MM-DD HH:MM</td>
  <td align="right">1.10K</td>
  <td>&nbsp;</td>
</tr>
```

Same idea: the display name, the link, the date, the size, and an optional description.

The icon differs by file type. [Configuration](./configuration.md) has the row for each —
links, compressed files, and unknown types — along with how to change the icons themselves.

## 5. Delete the leftovers

The shipped `index.html` contains example rows. **Delete every row you did not customise**, or
your listing will advertise files that do not exist.

This is the most common mistake, and the page cannot warn you about it — every row is
hand-written, so nothing checks that a link resolves.

## 6. Publish

Copy `index.html` and the `icons/` folder to your server. See [Deployment](./deployment.md).

## What it does not do

It does not read a directory. Nothing scans a folder and generates rows — the listing is
whatever you typed, and it goes stale the moment the real directory changes.

That is the trade for having no server-side component at all. See [FAQ](./faq.md).
