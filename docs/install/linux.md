# Install on Linux

Download the latest `.AppImage.zip` from [Releases](https://github.com/simsapa/simsapa/releases/).

Extract and add executable permissions to the `.AppImage` file.

```
chmod +x *.AppImage
```

**Ubuntu 22.04:** The HTML content pages will be blank, you have to start Simsapa with the following env variable:

``` shell
QTWEBENGINE_DISABLE_SANDBOX=1 ./Simsapa_Dhamma_Reader-0.5.0a1-x86_64.AppImage
```

After the database downloads are completed, and the app is re-started, Simsapa creates a `.desktop` app launcher, and it can be started from the menu.

The default location of the app launcher is: `~/.local/share/applications/simsapa.desktop`

If you encouter errors, see the [Troubleshooting > Linux](../troubleshooting/linux.md) page first.

