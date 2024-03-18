# Manual Database Setup

The application database can be downloaded and setup manually without too much technical difficulty.

Find the asset files at the link below. The database version must agree with the app version in the **major and minor version** numbers, patch numbers are compatible.

E.g. app version `v0.3.2` is compatible with db version `v0.3.0`, but not with `v0.2.0`.

<https://github.com/simsapa/simsapa-assets/releases>

You need at least three files:

- `appdata.tar.bz2`
- `index.tar.bz2`
- `userdata.tar.bz2`

Move and extract these in the app's data folder, which is:

- MacOS: `~/Library/Application\ Support/simsapa`
- Windows: `C:\Users\%USERNAME%\AppData\Local\simsapa\simsapa`
- Linux: `~/.local/share/simsapa`

For example:

```
cd ~/Library/Application\ Support/simsapa
ls
assets/  log.txt

# Remove any existing assets
rm -r assets/ log.txt
mkdir assets
cd assets

# move the downloaded files here and extract
mv ~/Downloads/*.tar.bz2
tar xjf *.tar.bz2

# remove the archives
rm *.tar.bz2

# Still in 'assets' folder, the contents should look like:
ls
appdata.sqlite3  courses/  html_resources/  index/  userdata.sqlite3
```

After this, when you start the app, it should find the database.

