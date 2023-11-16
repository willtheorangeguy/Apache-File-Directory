# Apache File Directory Customization

The Apache File Directory has been designed to be heavily customizable. More file and folder listings can be added, and directory paths can be changed, and the icons for each type of file can be changed. **Just search for and change the placeholder values in each code section.** Additionally, ensure that you have deleted all the extra file and folder rows that are unnecessary for your file listing, so not to confuse users.

All of these instructions require [a text editor](https://code.visualstudio.com/) to be installed.

## Basics

1. _Line 6:_ Update the `directory` placeholder text between the `<title>` tags with the actual directory name. This will be the title of the webpage.

```html
<title>Index of /directory</title>
```

2. _Line 12:_ If this is a directory inside of another directory, remove the comments (`<!--` and `-->`).

```html
<!--<tr><td valign="top"><img src="icons/back.gif" alt="[PARENTDIR]"></td><td><a href="../">Parent Directory</a></td><td>&nbsp;</td><td align="right">&nbsp;</td><td>&nbsp;</td></tr>-->
```

3. _Line 12, Column 88:_ Change the `../` with the actual link to the folder above, or leave it as `../` to use a relative path rather than an absolute one.

```html
<tr>
  <td valign="top"><img src="icons/back.gif" alt="[PARENTDIR]" /></td>
  <td><a href="../">Parent Directory</a></td>
  <td>&nbsp;</td>
  <td align="right">&nbsp;</td>
  <td>&nbsp;</td>
</tr>
```

4. When you have customized the title, and added folder and file listings following the tutorials below, save the files and upload them to your web server.
5. You're all set!

## For a Folder

```html
<tr>
  <td valign="top"><img src="icons/folder.gif" alt="[DIR]" /></td>
  <td><a href="folder/">folder</a></td>
  <td align="right">YYYY-MM-DD HH:MM</td>
  <td align="right">-</td>
  <td>&nbsp;</td>
</tr>
```

- Replace the `folder` placeholder value (between the `<a>...</a>` tags) with the real name of the folder.
- Replace the `folder/` link (between the `href="..."` tag) with the actual link to the folder.
- Replace the `YYYY-MM-DD HH:MM` placeholder date with the date the folder was last modified. **Leave the space behind the date!**
- Replace the `-` placeholder with the the size of the folder.
- Replace the `&nbsp;` place holder with a description if you would like, or leave it as it is to just show a blank space.
- Add more of these rows as necessary.

## For a Link

```html
<tr>
  <td valign="top"><img src="icons/hand.gif" alt="[LINK]" /></td>
  <td><a href="https://link-to-page.com">link</a></td>
  <td align="right">YYYY-MM-DD HH:MM</td>
  <td align="right">1.10K</td>
  <td>&nbsp;</td>
</tr>
```

- Replace the `link` placeholder value (between the `<a>...</a>` tags) with the real name of the page.
- Replace the `https://link-to-page.com` link (between the `href="..."` tag) with the actual link to the page.
- Replace the `YYYY-MM-DD HH:MM` placeholder date with the date the page was last modified. **Leave the space behind the date!**
- Replace the `1.10K` placeholder with the the size of the page.
- Replace the `&nbsp;` place holder with a description if you would like, or leave it how it is to just show a blank space.
- Add more of these rows as necessary.

## For a Classic File

```html
<tr>
  <td valign="top"><img src="icons/text.gif" alt="[TXT]" /></td>
  <td><a href="text.txt">Textfile.txt</a></td>
  <td align="right">YYYY-MM-DD HH:MM</td>
  <td align="right">1.10K</td>
  <td>&nbsp;</td>
</tr>
```

- Replace the `Textfile.txt` placeholder value (between the `<a>...</a>` tags) with the real name and file extension of the file.
- Replace the `text.txt` link (between the `href="..."` tag) with the actual link to the file.
- Replace the `YYYY-MM-DD HH:MM` placeholder date with the date the file was last modified. **Leave the space behind the date!**
- Replace the `1.10K` placeholder with the the size of the file.
- Replace the `&nbsp;` placeholder with a description if you would like, or leave it how it is to just show a blank space.
- Add more of these rows as necessary.

## For a Compressed File

```html
<tr>
  <td valign="top"><img src="icons/compressed.gif" alt="[COMPRESSED]" /></td>
  <td><a href="compressed.gz">Compressed File.gz</a></td>
  <td align="right">YYYY-MM-DD HH:MM</td>
  <td align="right">1.10K</td>
  <td>&nbsp;</td>
</tr>
```

- Replace the `Compressed File.gz` placeholder value (between the `<a>...</a>` tags) with the real name and file extension of the file.
- Replace the `compressed.gz` link (between the `href="..."` tag) with the actual link to the file.
- Replace the `YYYY-MM-DD HH:MM` placeholder date with the date the file was last modified. **Leave the space behind the date!**
- Replace the `1.10K` placeholder with the the size of the file.
- Replace the `&nbsp;` place holder with a description if you would like, or leave it how it is to just show a blank space.
- Add more of these rows as necessary.

## For an Unknown File

```html
<tr>
  <td valign="top"><img src="icons/unknown.gif" alt="[FILE]" /></td>
  <td><a href="unknown">unknown</a></td>
  <td align="right">YYYY-MM-DD HH:MM</td>
  <td align="right">1.10K</td>
  <td>&nbsp;</td>
</tr>
```

- Replace the `unknown` placeholder value (between the `<a>...</a>` tags) with the real name and file extension of the file.
- Replace the `unknown` link (between the `href="..."` tag) with the actual link to the file.
- Replace the `YYYY-MM-DD HH:MM` placeholder date with the date the file as last modified. **Leave the space behind the date!**
- Replace the `1.10K` placeholder with the the size of the file.
- Replace the `&nbsp;` place holder with a description if you would like, or leave it how it is to just show a blank space.
- Add more of these rows as necessary.

## Change Icons

The icons that are used to represent the different file types can also be changed. To add your own icons, follow these steps:

1. Find icons and save them as a `.gif` file. Ensure the icons are `20`x`22` pixels in size.
2. Move the icons to the `icons` folder.
3. Rename the icons to match the current icons.
4. You're all set!
