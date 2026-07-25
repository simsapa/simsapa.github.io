# Privacy Policy for Simsapa

**Last updated:** 25 July 2026

Simsapa is a sutta reader and Pāli dictionary application. This policy explains what data the application sends over the network, why, and how you can turn it off.

**Summary:** Simsapa does not require an account, does not ask for your name or email, and does not use advertising, analytics SDKs, or tracking cookies. After the initial download of the sutta and dictionary databases, the application can be used entirely offline. The only regular network request is an update check, which can be disabled.

## 1. Who we are

Simsapa is a free and open-source project. In this policy, "we" refers to the maintainers of the Simsapa application.

- Contact details are published at: <https://gambhiro.github.io/>
- Source code and issue tracker: <https://github.com/simsapa/simsapa>

## 2. Data stored on your device

Your reading activity is not tracked and user-created data such as bookmarks stay on your device. This includes:

- The sutta and dictionary databases downloaded on first start
- Bookmarks, search history, and any other content you create
- Application settings and preferences

We do not have access to any of this. It is not uploaded to us or to anyone else, and it is not backed up to any server. If you uninstall the application, this data is removed along with it (subject to your operating system's own backup behaviour, which is outside our control).

## 3. Data downloaded on first start

When you first run Simsapa, it downloads the sutta and dictionary databases it needs to function. These are ordinary file downloads from <https://github.com/simsapa/simsapa-assets/releases>. No personal information is sent.

## 4. The update check

On launch, Simsapa requests a JSON listing of available updates from:

```
https://simsapa.eu.pythonanywhere.com/releases
```

The purpose is to tell you when a newer version is available for your system and app version.

### 4.1 What is sent

The request includes the following technical parameters:

| Parameter | Description | Example |
|---|---|---|
| `channel` | Release channel selected in the app | `main`, `development` |
| `app_version` | Version of the installed application | `1.0.2` |
| `system` | Operating system | `linux`, `windows`, `macos`, `android`, `ios` |
| `machine` | CPU architecture | `x86_64`, `aarch64` |
| `cpu_max` | Maximum CPU frequency in MHz | `3600` |
| `cpu_cores` | Number of CPU cores | `8` |
| `mem_total` | Total system memory in bytes | `16777216000` |
| `screen` | Screen resolution | `1920 x 1080` |
| `no_stats` | Whether the request should be saved | `true`, `false` |

The request does **not** include your name, email address, phone number, contacts, location, advertising identifier, device serial number, IMEI, MAC address, or any of your reading data, bookmarks, notes, or search terms.

### 4.2 Device identification and Google Play

Simsapa does not generate or transmit a persistent device identifier. However, the combination of hardware characteristics listed above, together with the IP address inherent to any internet request (see section 5), could in principle be used to distinguish one device from another. Because Google Play's disclosure rules are based on what data *could* identify a device rather than on our intent, we have declared **"Device or other IDs"** as collected in the Google Play Data safety section.

### 4.3 Opt-out setting

The "Settings window > Updates > Notify About Simsapa Updates" option can be disabled to turn off checking for updates completely.

The "Settings window > Updates > Don't send stats" option disables sending the technical parameters.

Both options are found in the application settings. Disabling the update check means you will need to check for new versions yourself.

## 5. Server logs

The update endpoint is hosted on **PythonAnywhere**. As with any web request, the hosting provider's web server records standard log information, including your IP address, the time of the request, and the user agent string.

See also: [PythonAnywhere privacy policy](https://www.pythonanywhere.com/privacy_v2/).

An IP address is treated as personal data under the GDPR, which is why we mention it explicitly here. If you would prefer that your IP address never reaches our server, disable the update check.

## 6. Encryption

All network requests made by the application use HTTPS, so the data described above is encrypted in transit.

## 7. Sharing

We do not sell, rent, or trade any data. We do not share data with advertisers, data brokers, or analytics companies. The only third parties involved are the infrastructure providers needed to deliver the service:

- **PythonAnywhere:** hosts the update endpoint
- **GitHub:** hosts the source code, release files, and this page

## 8. Your rights

Depending on where you live, you may have rights under the GDPR, the UK GDPR, the CCPA, or similar laws — including the right to access, correct, or delete personal data held about you, and to object to its processing.

Because we do not collect names, email addresses, accounts, or persistent identifiers, we are generally unable to locate data relating to a specific person. The most direct way to exercise control is to disable the update check and statistics in the application settings.

Under the GDPR, our legal basis for the update check is legitimate interest (Art. 6(1)(f)) — providing security and compatibility updates and maintaining the application on the platforms our users actually run.

## 9. Children

Simsapa is not directed at children and does not knowingly collect personal information from children. The application contains no advertising, no user accounts, and no social or messaging features.

## 10. Changes to this policy

We may update this policy as the application changes. The revised version will be published at this URL with an updated date at the top. Material changes will also be noted in the application's release notes.

## 11. Contact

Questions about this policy can be sent to the contact address at <https://gambhiro.github.io/>, or raised as an issue at <https://github.com/simsapa/simsapa/issues>.
