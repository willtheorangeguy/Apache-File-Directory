# Apache File Directory
The basic Apache file directory page, as a simple HTML page.

## Instructions
In order to change the `index.html` file, replace the following with their real values:

**Basics:**
```html
<title id="title">Index of example</title>
```
- Update the `example` placeholder text with the actual directory name. This will be the title of the webpage. 
```html
<h1 id="header">Index of :\directory</h1>
```
- Update the `:\directory` placeholder text with the actual directory path. This will be the title displayed on the page.  
```html
<div id="parentDirLinkBox" style="display:none">
  <a id="parentDirLink" href="up/level" class="icon up">
    <span id="parentDirText">[parent directory]</span>
  </a>
</div>
```
- If this is a directory inside of another directory, remove the `style="display:none"` placeholder. 
- Change the `up/level` with the actual link to the folder above.

**For a Folder:**
```html
<tr>
    <td data-value="Folder"><a class="icon dir" href="link/to/folder">Folder</a></td>
    <td class="detailsColumn" data-value="0"></td><td class="detailsColumn">MM/DD/YY, HH:MM:SS PM</td>
  </tr>
```
- Replace the `"Folder"` placeholder value with the real name of the folder. 
- Replace the `"link/to/folder"` link with the actual link to the folder. 
- Replace the `Folder` placeholder name with the real name of the folder.
- Replace the `MM/DD/YY, HH:MM:SS PM` placeholder date with the date the folder was uploaded. 
- Add more of these rows as neccesary. 

**For a File:**
```html
<tr>
    <td data-value="File"><a class="icon file" draggable="true" href="link/to/file">File.txt</a></td>
    <td class="detailsColumn">File</td><td class="detailsColumn">0.00 MB</td><td class="detailsColumn">MM/DD/YY, HH:MM:SS PM</td>
  </tr>
```
- Replace the `"File"` placeholder value with the real name of the file. 
- Replace the `"link/to/file"` link with the actual link to the file. 
- Replace the `File.txt` placeholder name with the real name and extension of the file.
- Replace the `File` placeholder text with the actual file type.
- Replace the `0.00 MB` placeholder size with the real size of the file. 
- Replace the `MM/DD/YY, HH:MM:SS PM` placeholder date with the date the file was uploaded. 
- Add more of these rows as neccesary. 

## Credits
None of this would be possible without the [Apache Dev Team](http://httpd.apache.org/dev/). Thanks to them for creating this. 

## Apache License
It can be found in the [`LICENSE`](https://github.com/willtheorangeguy/Apache-File-Directory/blob/main/LICENSE) file, as well as [here](https://www.apache.org/licenses/LICENSE-2.0).
