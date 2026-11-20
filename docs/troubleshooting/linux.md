# Linux

## App starts, but HTML content pages are blank

Start Simsapa with the following env variable:

``` shell
QTWEBENGINE_DISABLE_SANDBOX=1 ./Simsapa-v1.3.1-Linux-x86_64.AppImage
```

## Could not load the Qt platform plugin "xcb" in "" even though it was found

Install `libxcb`:

```
sudo apt install libxcb-cursor0
```

## Failed to load module 'xapp-gtk3-module'

```
sudo apt install libxapp1
```

## The Wayland connection broke. Did the Wayland compositor die?

Open the app launcher file:

``` shell
gedit ~/.local/share/applications/simsapa.desktop
```

On the `Exec` line insert `QT_QPA_PLATFORM=xcb` before the AppImage path, see the example below.

(📙 NOTE: replace **/fullpath/to/** with the actual path and the app filename to the correct version)

```
[Desktop Entry]
Encoding=UTF-8
Name=Simsapa
Icon=simsapa
Terminal=false
Type=Application
Path=/fullpath/to
Exec=env QTWEBENGINE_DISABLE_SANDBOX=1 QT_QPA_PLATFORM=xcb /fullpath/to/Simsapa-v1.3.1-Linux-x86_64.AppImage
```

