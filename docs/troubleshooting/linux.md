# Linux

## App starts, but HTML content pages are blank

Start Simsapa with the following env variable:

``` shell
QTWEBENGINE_DISABLE_SANDBOX=1 ./Simsapa_Dhamma_Reader-0.2.0a1-x86_64.AppImage
```

## Could not load the Qt platform plugin "xcb" in "" even though it was found

Install `libxcb`:

```
sudo apt install libxcb-cursor0
```

## Failed to load module 'xapp-gtk3-module'

```
sudo apt install xapp
```

## The Wayland connection broke. Did the Wayland compositor die?

Open the app launcher file:

``` shell
gedit ~/.local/share/applications/simsapa.desktop
```

On the `Exec` line insert `QT_QPA_PLATFORM=xcb` before the AppImage path, see the example below.

(📙 NOTE: replace **/path/to/** with the actual path and the app filename to the correct version)

```
[Desktop Entry]
Encoding=UTF-8
Name=Simsapa
Icon=simsapa
Terminal=false
Type=Application
Exec=env QTWEBENGINE_DISABLE_SANDBOX=1 QT_QPA_PLATFORM=xcb /path/to/Simsapa_Dhamma_Reader-0.5.0a1-x86_64.AppImage
```

