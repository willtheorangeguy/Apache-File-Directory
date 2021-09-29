# Apache File Directory
The basic Apache file directory page, as a simple HTML page.

## Instructions
In order to change the `index.html` file, replace the following with their real values:

**Basics:**
```html
<title>Index of /directory</title>
```
- Update the `directory` placeholder text with the actual directory name. This will be the title of the webpage.  
```html
<!--<tr><td valign="top"><img src="icons/back.gif" alt="[PARENTDIR]"></td><td><a href="../">Parent Directory</a></td><td>&nbsp;</td><td align="right">&nbsp;</td><td>&nbsp;</td></tr>-->
```
- If this is a directory inside of another directory, remove the `<!--` and `-->`. 
- Change the `../` with the actual link to the folder above.

**For a Folder:**
```html
<tr>
    <td valign="top"><img src="icons/folder.gif" alt="[DIR]"></td>
    <td><a href="folder/">folder</a></td>
    <td align="right">YYYY-MM-DD HH:MM  </td>
    <td align="right"> - </td>
    <td>&nbsp;</td>
</tr>
```
- Replace the `folder` placeholder value with the real name of the folder. 
- Replace the `folder/` link with the actual link to the folder. 
- Replace the `YYYY-MM-DD HH:MM` placeholder date with the date the folder was last modified. 
- Replace the ` - ` placeholder with the the size of the folder.
- Replace the `&nbsp;` place holder with a description if you would like.
- Add more of these rows as neccesary.  

**For a Link:**
```html
<tr>
    <td valign="top"><img src="icons/hand.gif" alt="[LINK]"></td>
    <td><a href="https://link-to-page.com">link</a></td>
    <td align="right">YYYY-MM-DD HH:MM  </td>
    <td align="right">1.10K</td>
    <td>&nbsp;</td>
</tr>
```
- Replace the `link` placeholder value with the real name of the page. 
- Replace the `https://link-to-page.com` link with the actual link to the page. 
- Replace the `YYYY-MM-DD HH:MM` placeholder date with the date the page was last modified. 
- Replace the `1.10K` placeholder with the the size of the page.
- Replace the `&nbsp;` place holder with a description if you would like.
- Add more of these rows as neccesary. 

**For a Normal File:**
```html
<tr>
    <td valign="top"><img src="icons/text.gif" alt="[TXT]"></td>
    <td><a href="text.txt">Textfile.txt</a></td>
    <td align="right">YYYY-MM-DD HH:MM  </td>
    <td align="right">1.10K</td>
    <td>&nbsp;</td>
</tr>
```
- Replace the `Textfile.txt` placeholder value with the real name and file extension of the file. 
- Replace the `text.txt` link with the actual link to the file. 
- Replace the `YYYY-MM-DD HH:MM` placeholder date with the date the file was last modified. 
- Replace the `1.10K` placeholder with the the size of the file.
- Replace the `&nbsp;` place holder with a description if you would like.
- Add more of these rows as neccesary. 

**For a Compressed File:**
```html
<tr>
    <td valign="top"><img src="icons/compressed.gif" alt="[COMPRESSED]"></td>
    <td><a href="compressed.gz">Compressed File.gz</a></td>
    <td align="right">YYYY-MM-DD HH:MM  </td>
    <td align="right">1.10K</td>
    <td>&nbsp;</td>
</tr>
```
- Replace the `Compressed File.gz` placeholder value with the real name and file extension of the file. 
- Replace the `compressed.gz` link with the actual link to the file. 
- Replace the `YYYY-MM-DD HH:MM` placeholder date with the date the file was last modified. 
- Replace the `1.10K` placeholder with the the size of the file.
- Replace the `&nbsp;` place holder with a description if you would like.
- Add more of these rows as neccesary. 

**For an Unknown File:**
```html
<tr>
    <td valign="top"><img src="icons/unknown.gif" alt="[FILE]"></td>
    <td><a href="unkown">unknown</a></td>
    <td align="right">YYYY-MM-DD HH:MM  </td>
    <td align="right">1.10K</td>
    <td>&nbsp;</td>
</tr>
```
- Replace the `unknown` placeholder value with the real name and file extension of the file. 
- Replace the `unknown` link with the actual link to the file. 
- Replace the `YYYY-MM-DD HH:MM` placeholder date with the date the file was last modified. 
- Replace the `1.10K` placeholder with the the size of the file.
- Replace the `&nbsp;` place holder with a description if you would like.
- Add more of these rows as neccesary. 

## Credits
None of this would be possible without the [Apache Dev Team](http://httpd.apache.org/dev/). Thanks to them for creating this. 

## Apache License
It can be found in the [`LICENSE`](https://github.com/willtheorangeguy/Apache-File-Directory/blob/main/LICENSE) file, as well as [here](https://www.apache.org/licenses/LICENSE-2.0).
