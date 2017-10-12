setting up preferred workspace environment

## [Node.js](https://nodejs.org/)

There are different installation processes, and the normal way is clicking yes many times and/or click & dragging the icon to the Application folder. There will be times I may forget to setup the `Environment Variables` or the `$PATH`.

### Node.js Setup For Mac

expect to install
- [Homebrew](https://brew.sh/)
- [Node.js](https://nodejs.org/)

extra:
- [nvm - Node Version Manager](https://github.com/creationix/nvm)

expect to overwrite `~/.bashrc` & `~/.bash_profile`

#### The quick bash snippet to install on Mac!

You will need to open the terminal
click `command + space` > type `terminal` > click `enter`

```sh
# install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# install long term support
brew install node
```

Get [Git](https://git-scm.com/) installed for version control!
```sh
brew install git
```

### Node.js Setup For Windows

expect to install

- [Chocolatey - The package manager for Windows](https://chocolatey.org/)
- [Node.js](https://nodejs.org/)

extra:
- [nvm for windows](https://github.com/coreybutler/nvm-windows)
  - [important notes](https://github.com/creationix/nvm#important-notes)

#### The quick batch snippet to install on Windows!

Open `Command Prompt` as Administrator.
Right clicking shows the menu option.

```bat
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
choco install -y nodejs
```

Get [Git](https://git-scm.com/) installed for version control! Includes [Git BASH](https://git-for-windows.github.io/)
```bat
choco install -y git
```

### Node.js Setup for [Various flavors of] Linux

Node.js actually has a [webpage for downloading with respective package managers](https://nodejs.org/en/download/package-manager/)

![random image](https://placeimg.com/200/200/animals)

### Node.js Confirm Installation

Running these commands should confirm that they are installed and ready to use

- `node --version` should return `v8.5.0`
- `npm --version` should return `5.3.0`

---

## Git Tips


For any possible line-ending issues with git
```bat
git config --global core.autocrlf false
```
More details from this GitHub article: [dealing with line endings](https://help.github.com/articles/dealing-with-line-endings/)

---

## [Visual Studio Code](https://code.visualstudio.com/)

Current Favorite Editor includes git support and syntax highlighting along with integrated terminal by toggling `Control + ~`

On Mac Terminal:
```sh
brew cask install visual-studio-code
```

On Windows Command Prompt as Administrator: 
```bat
choco install -y visualstudiocode
```

