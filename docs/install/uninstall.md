# Uninstall

MacOS: Select the application icon and move it to the Bin.

Windows: Delete the application folder and desktop icon.

Linux: Delete the .AppImage file and .desktop launcher.

## Removing the Application Database

The Simsapa application database (where the suttas, dictionaries, etc. are stored) is not removed when un-installing Simsapa.

Use the terminal to remove the applications local data folder:

**MacOS:**

``` shell
rm -r ~/Library/Application\ Support/simsapa
```

**Windows:**

``` shell
rmdir /s /q C:\Users\%USERNAME%\AppData\Local\simsapa
```

**Linux:**

``` shell
rm -r ~/.local/share/simsapa
```
