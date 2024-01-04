# Development: Running from Source

## Linux Setup

### Development Tools

Install Python 3.11 (possibly with your distro's pacakge manager)

Install [Rust](https://www.rust-lang.org/tools/install) (stable channel)

``` shell
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

Type "1" to proceed with installation.

Install [NVM (Node Version Manager)](https://github.com/nvm-sh/nvm)

``` shell
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
```

**Close the terminal** and open a new one to reload the environment variables.

Install Node (stable)

``` shell
nvm install stable
```

Install [Poetry](https://python-poetry.org/docs/)

``` shell
pipx install poetry
```

(On your system it could be `pip`, `pip3` or `pipx`)

At this point the following commands should work:

``` shell
python3 --version
poetry --version
rustup show
node --version
```

Install the [sindresorhus/create-dmg](https://github.com/sindresorhus/create-dmg) tool

``` shell
npm install --global create-dmg
```

### Clone and Run Simsapa

Clone the Simsapa repo and install Python packages.

``` shell
git clone --depth=1 https://github.com/simsapa/simsapa.git
cd simsapa
poetry install
```

In the project root, enter a venv with poetry and start the app with:

``` shell
poetry shell
python3 run.py
```

## MacOS Setup

### Development Tools

Download XCode from the App Store.

Install [Homebrew](https://brew.sh/)

``` shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

When the command finishes, it prints the commands to add Homebrew to your PATH under "Next steps".

Install Python 3.11


``` shell
brew install python@3.11
```

Install [Rust](https://www.rust-lang.org/tools/install) (stable channel)

``` shell
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

Type "1" to proceed with installation.

Install [NVM (Node Version Manager)](https://github.com/nvm-sh/nvm)

``` shell
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
```

**Close the terminal** and open a new one to reload the environment variables.

Install Node (stable)

``` shell
nvm install stable
```

Install [Poetry](https://python-poetry.org/docs/)

``` shell
pip3 install poetry
```

At this point the following commands should work:

``` shell
python3 --version
poetry --version
rustup show
node --version
```

Install the [sindresorhus/create-dmg](https://github.com/sindresorhus/create-dmg) tool

``` shell
npm install --global create-dmg
```

### Clone and Run Simsapa

Clone the Simsapa repo and install Python packages.

(Commands one line at a time)

``` shell
git clone --depth=1 https://github.com/simsapa/simsapa.git
cd simsapa
poetry install
```

To run the app using the Python source, in the `simsapa` folder, enter a venv with poetry and start the app with:

``` shell
poetry shell
python3 run.py
```

### Build the .dmg

The repo uses the [pydoit](https://pydoit.org/) task runner.

With no arguments (just `doit` 💥), the default task is `update_build_open`, which updates the repo, installs libs, builds the app, and opens the `dist/` folder. `doit list` shows the available tasks.

In the project root folder:

``` shell
poetry shell
doit
```

On success, the `dist/` folder should open. Double click on the `.dmg` file, drag the icon to Applications.

## Windows Setup

### Development Tools

Install Python 3.11

Download the [Python 3.11 Windows Installer](https://www.python.org/downloads/release/python-3111/), use the link marked **Recommended** at the bottom of the page.

Make sure to check **Add Python 3.11 to PATH**.

![Windows Install Python](/images/windows-install-python-3-11.png)

It is recommended to allow **Disable path length limit**.

![Windows Python Finished](/images/windows-python-finished.png)

Open a **cmd.exe** terminal to test:

```
python --version
Python 3.11.0
```

Install [Rust](https://www.rust-lang.org/tools/install) (stable channel)

``` shell
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

Type "1" to proceed with installation.

Install [Node](https://nodejs.org/en/download) (stable) with the Windows installer.

Install Poetry

Open a terminal:

```
python -m pip install poetry
```

Test the command:

At this point the following commands should work:

``` shell
python3 --version
poetry --version
rustup show
node --version
```

Install the [sindresorhus/create-dmg](https://github.com/sindresorhus/create-dmg) tool

``` shell
npm install --global create-dmg
```

### Clone and Run Simsapa

Clone the Simsapa repo and install Python packages.

``` shell
git clone --depth=1 https://github.com/simsapa/simsapa.git
cd simsapa
poetry install
```

In the project root, enter a venv with poetry and start the app with:

``` shell
poetry shell
python3 run.py
```

## .env

Environment variables can be set with a `.env` file is in the project root.

Recognized settings:

```
ENABLE_PRINT_LOG=true
```

Print log messages as well as writing them to `~/.local/share/simsapa/log.txt`

```
USE_TEST_DATA=true
```

Instead of connecting to database in the user's folders, connect to the test
database found in `tests/data/assets/`

```
ENABLE_WIP_FEATURES=false
```

Whether to enable work-in-progress feature which may be unstable or broken.

## Editing application windows with Qt Designer

Install Qt Designer and dependencies from the distro package manager (not `pip`).

``` shell
sudo apt-get install qttools5-dev-tools python3-pyqt5 python3-pyqt5.qtquick libqt5designer5 libqt5designercomponents5
```

Open the `.ui` file in Qt Designer, in or out- of the project venv.

``` shell
designer ./simsapa/assets/ui/dictionary_search_window.ui
```

After saving the `.ui`, re-generate the `.py` files. The Makefile target calls `pyuic5 `.

``` shell
make ui
```

Don't use the pip pacakges frequently recommended in tutorials (`pip install
pyqt5 pyqt5-tools`), these are often compiled at different Qt versions, and may
result in Qt Designer crashing with the following error:

```
...Qt/bin/designer: symbol lookup error: ...Qt/bin/designer: undefined symbol: _ZdlPvm, version Qt_5
```

