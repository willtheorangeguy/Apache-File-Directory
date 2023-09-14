<!-- Logo -->
<h1 align="center">
  <img src="https://raw.githubusercontent.com/willtheorangeguy/Apache-File-Directory/main/docs/images/logo.png" height="250px" width="400px" alt="Apache File Directory">
  <br>
  Apache File Directory
  <br>
</h1>

<!-- Copy -->
<h4 align="center">The basic Apache file directory page, as a simple HTML page.</h4>

<!-- Badges -->
<div align="center">
  <!-- Stability -->
  <img alt="Docker State" src="https://github.com/willtheorangeguy/Apache-File-Directory/actions/workflows/docker-publish.yml/badge.svg">
  <!-- Stability -->
  <img alt="GitHub Pages State" src="https://github.com/willtheorangeguy/Apache-File-Directory/actions/workflows/pages.yml/badge.svg">
  <!-- Stability -->
  <img alt="Gitleaks State" src="https://github.com/willtheorangeguy/Apache-File-Directory/actions/workflows/gitleaks.yml/badge.svg">
  <!-- Version -->
  <img alt="GitHub Version" src="https://img.shields.io/github/v/release/willtheorangeguy/Apache-File-Directory">
  <!-- Issues -->
  <img alt="GitHub Issues" src="https://img.shields.io/github/issues/willtheorangeguy/Apache-File-Directory">
  <!-- Pull Requests -->
  <img alt="GitHub Pull Requests" src="https://img.shields.io/github/issues-pr/willtheorangeguy/Apache-File-Directory">
  <!-- Discord -->
  <img alt="Discord Server ID" src="https://img.shields.io/discord/962877631236296824">
  <!-- Downloads -->
  <img alt="Downloads" src="https://img.shields.io/github/downloads/willtheorangeguy/Apache-File-Directory/total">
  <!-- Language Count -->
  <img alt="GitHub Languages" src="https://img.shields.io/github/languages/count/willtheorangeguy/Apache-File-Directory">
</div>

<!-- Navigation -->
<p align="center">
  <a href="#key-features">Key Features</a> •
  <a href="#download">Download</a> •
  <a href="#how-to-use">How To Use</a> •
  <a href="#support">Support</a> •
  <a href="#contributing">Contributing</a> •
  <a href="#changelog">Changelog</a> •
  <a href="#credits">Credits & Contributors</a>
</p>

<!-- Screenshot(s) -->
![screenshot](https://raw.githubusercontent.com/willtheorangeguy/Apache-File-Directory/main/docs/images/welcome.png)

## Key Features

* Basic file directory view.
* Name, modified date, size and description fields.
* Folder and file links.
* Icons for folders, links, text files, compressed files and unknown files.
* Compatible with all web servers and websites.
* Cross platform.

## Download

You can **[download](https://github.com/willtheorangeguy/Apache-File-Directory/releases/latest) the source code** to modify the code and create your own file directory page.

You can also access the **production version the website**, available on all platforms, **[here](https://willtheorangeguy.github.io/Apache-File-Directory/)**.

## How To Use

To clone and run this website, you'll need [Git](https://git-scm.com/downloads) installed on your computer. If you would rather not use Git, you can just download the code from GitHub above. From your command line:

```bash
# Clone this repository
$ git clone https://github.com/willtheorangeguy/Apache-File-Directory.git

# Go into the repository
$ cd Apache-File-Directory

# Run the webpage
$ index.html
```

You can also pull the [Docker](https://www.docker.com/) image from GitHub Packages. From your command line:

```bash
# Pull image
$ docker pull ghcr.io/willtheorangeguy/apache-file-directory:main

# Run container
$ docker run -d -p 8000:80 ghcr.io/willtheorangeguy/apache-file-directory:main

# Now, navigate to localhost in your browser to see the webpage
```

However, **if you want to edit the file directory and make it your own**, follow the steps below:

### Basics

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
<tr><td valign="top"><img src="icons/back.gif" alt="[PARENTDIR]"></td><td><a href="../">Parent Directory</a></td><td>&nbsp;</td><td align="right">&nbsp;</td><td>&nbsp;</td></tr>
```

4. When you have customized the title, and added folder and file listings following the tutorials below, save the files and upload them to your web server.
5. You're all set!

### Adding Folders

```html
<tr>
    <td valign="top"><img src="icons/folder.gif" alt="[DIR]"></td>
    <td><a href="folder/">folder</a></td>
    <td align="right">YYYY-MM-DD HH:MM  </td>
    <td align="right"> - </td>
    <td>&nbsp;</td>
</tr>
```

* Replace the `folder` placeholder value (between the `<a>...</a>` tags) with the real name of the folder.
* Replace the `folder/` (between the `href="..."` tag) link with the actual link to the folder.
* Replace the `YYYY-MM-DD HH:MM` placeholder date with the date the folder was last modified. Leave the space behind the date!
* Replace the ` - ` placeholder with the the size of the folder.
* Replace the `&nbsp;` placeholder with a description if you would like, or leave it as it is to just show a blank space.
* Add more of these rows as necessary.

### Adding Files

This tutorial shows how to add basic file listings to the Apache File Directory page, but you can also add links, compressed files and unknown files. See the [Support](#support) section below to add these!

```html
<tr>
    <td valign="top"><img src="icons/text.gif" alt="[TXT]"></td>
    <td><a href="text.txt">Textfile.txt</a></td>
    <td align="right">YYYY-MM-DD HH:MM  </td>
    <td align="right">1.10K</td>
    <td>&nbsp;</td>
</tr>
```

* Replace the `Textfile.txt` placeholder value (between the `<a>...</a>` tags) with the real name and file extension of the file.
* Replace the `text.txt` link (between the `href="..."` tag) with the actual link to the file.
* Replace the `YYYY-MM-DD HH:MM` placeholder date with the date the file was last modified. Leave the space behind the date!
* Replace the `1.10K` placeholder with the the size of the file.
* Replace the `&nbsp;` placeholder with a description if you would like, or just leave it as it is to just show a blank space.
* Add more of these rows as necessary.

## Support

Further customization options for different types of files and folder structures can be found in [`CUSTOMIZATION`](https://github.com/willtheorangeguy/Apache-File-Directory/blob/main/docs/CUSTOMIZATION.md). More documentation is available in the **[Documentation](https://github.com/willtheorangeguy/Apache-File-Directory/tree/main/docs)** and on the **[Wiki](https://github.com/willtheorangeguy/Apache-File-Directory/wiki)**. If more support is required, please open a **[GitHub Discussion](https://github.com/willtheorangeguy/Apache-File-Directory/discussions/new)** or join our **[Discord](https://discord.gg/hegWM3W4kw)**.

## Contributing

Please contribute using [GitHub Flow](https://guides.github.com/introduction/flow). Create a branch, add commits, and [open a pull request](https://github.com/willtheorangeguy/Apache-File-Directory/compare).

Please read [`CONTRIBUTING`](CONTRIBUTING.md) for details on our [`CODE OF CONDUCT`](CODE_OF_CONDUCT.md), and the process for submitting pull requests to us.

## Changelog

See the [`CHANGELOG`](CHANGELOG.md) file for details.

## Credits

This software uses the following open source packages, projects, services or websites:

<!-- Credits Table -->
<table>
  <tr>
    <th align="center"><img src="https://applets.imgix.net/https%3A%2F%2Fassets.ifttt.com%2Fimages%2Fchannels%2F2107379463%2Ficons%2Fmonochrome_large.png?w=240&h=240&s=8a19bbc158996d098e2fb18310ba7f33" width="150" height="150" alt="GitHub"/></th>
    <th align="center"><img src="https://www.w3.org/assets/logos/w3c/w3c-no-bars.svg" width="150" height="150" alt="W3C"/></th>
    <th align="center"><img src="https://videos.w3schools.com/files/images/w3schools_logo_500_04AA6D.png" width="150" height="150" alt="W3Schools"/></th>
    <th align="center"><img src="https://avatars.githubusercontent.com/u/47359?s=200&v=4" width="150" height="150" alt="Apache"/></th>
  </tr>
  <tr>
    <td align="center">GitHub</td>
    <td align="center">W3C</td>
    <td align="center">W3Schools</td>
    <td align="center">Apache</td>
  </tr>
  <tr>
    <td align="center"><a href="https://github.com/">Web</a> - <a href="https://github.com/pricing">Plans</a></td>
    <td align="center"><a href="https://www.w3.org">Web</a> - <a href="https://www.w3.org/support/">Donate</a></td>
    <td align="center"><a href="https://www.w3schools.com">Web</a> - <a href="https://www.w3schools.com/pro/index.php">Pro</a></td>
    <td align="center"><a href="https://www.apache.org/">Web</a> - <a href="https://www.apache.org/foundation/contributing.html">Donate</a></td>
  </tr>
</table>

## Contributors

* [@willtheorangeguy](https://github.com/willtheorangeguy) - Sponsor on [PayPal](https://paypal.me/wvdg44?country.x=CA&locale.x=en_US)

## You may also like...

* [Running Calculator](https://github.com/willtheorangeguy/Running-Calculator) - A running speed calculator for any unit of distance.
* [PyWorkout](https://github.com/willtheorangeguy/PyWorkout) - A minimal CLI to keep you inspired during your workout! Easily used and customized, with support for multiple workout plans, different muscle groups and video workouts.
* [PyAvatar](https://github.com/willtheorangeguy/PyAvatar) - Easily display all of your creative avatars to keep them consistent across websites.

## License

**The website code in this repository is created by the [Apache HTTP Server Development Team](https://httpd.apache.org/contributors/) and owned by the Apache Software Foundation. The HTTP server is released under the Apache License 2.0, and this project follows those licensing guidelines.**

This project is licensed under the [Apache License 2.0](https://choosealicense.com/licenses/apache-2.0/) - see the [`LICENSE`](LICENSE.md) file for details. See the [Privacy Policy](https://github.com/willtheorangeguy/Apache-File-Directory/blob/main/docs/legal/PRIVACY.md) and [Terms and Conditions](https://github.com/willtheorangeguy/Apache-File-Directory/blob/main/docs/legal/TERMS.md) for legal information.
