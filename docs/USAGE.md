# Apache File Directory Usage

To install and run the Apache File Directory, you can run the scripts from GitHub, or run a [Docker](https://www.docker.com/) container from [GitHub Packages](https://github.com/willtheorangeguy/Apache-File-Directory/pkgs/container/apache-file-directory).

## GitHub Scripts

1. To install the Apache File Directory, download the latest `.zip` file from [GitHub Releases](https://github.com/willtheorangeguy/Apache-File-Directory/releases/latest) page.
2. Extract the `.zip` file using a program like [7-Zip](https://www.7-zip.org/).
3. Copy the `index.html` file to the location on your website server where you want the file directory.
4. Edit the `index.html` file following the instructions in [`CUSTOMIZATION`](CUSTOMIZATION.md).
5. Save the file and upload it to your website server.
6. You're all set!

## Docker Container

1. Download and install [Docker](https://www.docker.com/products/docker-desktop/).
2. Open a terminal and pull the container: `docker pull ghcr.io/willtheorangeguy/Apache-File-Directory:main`.
3. Start the container: `docker run -d -p 8000:80 ghcr.io/willtheorangeguy/Apache-File-Directory:main`.
4. Head to [http://localhost:8000/](http://localhost:8000/).
5. Enjoy the website!
