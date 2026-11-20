# Portable Use

Simsapa can be used as a portable application, e.g. running it from a USB drive or a user folder.

## Windows setup

The Windows setup offers a "Portable mode", where the application is installed in a folder you choose.

Even when planning to use if from an external drive later,
it is faster to install to a folder on the Desktop first and selecting the .cmd launcher option,
then starting the app so that it downloads and extracts the databases there.

When the setup completes, move the files to the USB drive (Simsapa/ and SimsapaData/ folders and the Simsapa.cmd launcher).

A flash USB stick can work but a bit slow due to read speed of the flash memory.
An SSD or NVMe type drive is recommended for good performance.

There are more technical details in the [application docs](https://github.com/simsapa/simsapa/blob/main/docs/windows-portable-install.md). It can be helpful to copy the docs link in an AI chat and ask how to set it up for your situation.

## General

Create a `config.txt` or `.env` file in the same folder as the executable binary.

The `SIMSAPA_DIR=path/to/simsapa-dir` variable specifies the folder where the app should look for the database and other assets.

If this is folder is on a USB, the drive letter has to be updated when a different machine assign a different drive letter.

```
SIMSAPA_DIR=E:\SimsapaData
```

If the assets are found in that folder, the Sutta Search window will open.

If the assets are not found, they will be downloaded to the specified folder.

