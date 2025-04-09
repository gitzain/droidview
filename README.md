# DroidView
A lightweight utility script that lets you view, control, and interact with your Android phone directly from your PC using `scrcpy`.

## Table of content
- [Motivation](#motivation)
- [Installation & Usage](#installation--usage)
  - [Installation](#installation)
  - [Usage](#usage)
- [Contributing](#contributing)
- [History](#history)
- [Credits](#credits)
- [License](#license)

## Motivation
DroidView was built to simplify the process of mirroring and controlling Android devices from a PC using `scrcpy`. While `scrcpy` is powerful, it can be slightly unintuitive for users who just want a quick and easy way to launch their phone screen with sensible defaults. DroidView wraps this functionality into a clean, minimal interface or command-line tool, making remote phone access easier and more efficient — ideal for developers, power users, and presenters.



## Installation & Usage
### Installation
1. **Install Homebrew (macOS only)**
   ```bash
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/<your username>/.zprofile
   eval "$(/opt/homebrew/bin/brew shellenv)"
   ```

2. **Install Android Platform Tools**
   ```bash
   brew install android-platform-tools
   ```
   
3. **Enable ADB over Wi-Fi**
   - Connect your phone via USB cable.
   - Run:
     ```bash
     adb tcpip 5555
     ```

4. **Clone this repository**
   ```bash
   git clone https://github.com/yourusername/droidview.git
   cd droidview
   ```

5. **(Optional) Add to PATH or create a shortcut**  
   For convenience, you can create a global alias or desktop shortcut to run DroidView from anywhere.

### Usage
Run the script from your terminal or shell:

```bash
./droidview.sh
```

Or, if on Windows:

```cmd
droidview.bat
```

By default, it opens your Android phone in a resizable window, allowing full control via keyboard and mouse.

You can customise behaviour using flags (coming soon), such as:
- `--no-audio`
- `--fullscreen`
- `--record [file]`

> ⚠️ Ensure USB debugging is enabled on your Android device and it's connected via USB or Wi-Fi with ADB.

## Contributing
1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -m 'Added some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D

## History
09/04/25: Initial release of DroidView on GitHub.

## Credits
- Inspired by [`scrcpy`](https://github.com/Genymobile/scrcpy) by Genymobile  
- README template by [template-readme](https://github.com/gitzain/template-README) created by [Zain Khan](https://iamzain.com)

## License
See the LICENSE file in this project's directory.
