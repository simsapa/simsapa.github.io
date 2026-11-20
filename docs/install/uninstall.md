# Uninstall

MacOS: Select the application icon and move it to the Bin.

Windows: Delete the application folder and desktop icon.

Linux: Delete the .AppImage file and .desktop launcher.

## Removing the Application Database

When using the Windows uninstaller, it asks whether to also remove the application database (where the suttas, dictionaries, etc. are stored).

On every platform, the **App Settings** window has a button for **Remove App Database and Assets...**

Or manually, use the file manager or terminal to remove the applications local data folder:

**MacOS:**

``` shell
rm -r ~/Library/Application\ Support/simsapa
```

**Windows:**

``` shell
rmdir /s /q C:\Users\%USERNAME%\AppData\Local\profound-labs\simsapa
```

**Linux:**

``` shell
rm -r ~/.local/share/simsapa
```
