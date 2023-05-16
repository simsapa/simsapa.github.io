# Portable Use

Simsapa can be used as a portable application, e.g. running it from a USB drive or a user folder.

Create a `.env` file in the same folder as the executable binary.

The `SIMSAPA_DIR=path/to/assets-dir` variable specifies the folder where the app should look for the database and other assets.

If this is folder is on a USB, the drive letter has to be updated when a different machine assign a different drive letter.

```
SIMSAPA_DIR=E:\simsapa-assets
```

If the assets are found in that folder, the Sutta Search window will open.

If the assets are not found, they will be downloaded to the specified folder.

