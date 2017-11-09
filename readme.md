setting up preferred workspace environment

## Node.js Setup for Mac

open the terminal and copy any of the following:

### [brew install node](./mac-install-node.bash)
`curl -o- https://raw.githubusercontent.com/ninbryan/computer-setup/master/mac-install-node.bash | bash`

### [brew install nvm](./mac-install-nvm.bash) if you want to try [Node Version Manager](https://github.com/creationix/nvm)
`curl -o- https://raw.githubusercontent.com/ninbryan/computer-setup/master/mac-install-nvm.bash | bash`

### [brew install git](./mac-install-git.bash) for version control with [Git](https://git-scm.com/)
`curl -o- https://raw.githubusercontent.com/ninbryan/computer-setup/master/mac-install-git.bash | bash`

## Node.js Setup for Windows

Review the instructions [here!](./windows-powershell-install-chocolatey.md)

## Node.js Setup for [Various flavors of] Linux

Node.js actually has a [webpage for downloading with respective package managers](https://nodejs.org/en/download/package-manager/)

I have not tested this though

![random image](https://placeimg.com/200/200/animals)

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

