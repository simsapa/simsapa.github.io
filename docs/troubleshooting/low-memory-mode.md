# Low Memory Mode

A laptop with 8 GB RAM is sufficient to run Simsapa.

By default incremental search is on, i.e. a search starts when you stop or pause while typing. This can be slow on older computers, turn it off with:

- Find > Search As You Type: **OFF**

In normal operation, Simsapa uses about 1-3 GB RAM, depending on how many windows and suttas are open.

Each tab which renders HTML is an embedded Chromium instance ([Qt WebEngine](https://doc.qt.io/qt-6/qtwebengine-overview.html)), so its memory consumption can be compared to a browser with a few open web pages.

To minimize memory usage, these settings minimize the loaded window types and HTML renderer tabs:

- File > Start in Low Memory Mode **ON** (disables pre-loading windows)
- File > Tray Click Opens Window: the window you use most often, e.g. **Sutta Study**
- Windows > First Window on Startup: the same as above, e.g. **Sutta Study**
- Suttas > Show Related Suttas **OFF** (disables automatically opening sutta translations)

This way the app uses about 450 - 500 MB RAM.



