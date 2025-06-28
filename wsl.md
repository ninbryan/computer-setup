# WSL Setup

Prerequisite: [windows setup](./windows-powershell-install-chocolatey.md)

Installing the following:
- WSL2
- Ubuntu distribution
- fnm
- nodejs v22.17.0
- pnpm
- react-router app example (TBD)

## Install Ubuntu 22 in WSL

0. open powershell in administrator mode

1. review available Distros
```powershell
wsl --list --online
```

2. install Ubuntu 22 Distro in the very specific way of referencing it
```powershell
wsl --install Ubuntu-22.04
# <Distro> could have been anything else, should it be the default?
```

3. In case of multiple distros, and updating default wsl environment to specified Distro, update default!
```powershell
# ensure default is this Distro
wsl --setdefault Ubuntu-22.04
# only if you plan on having more distros installed...
```

4. run the linux!
```powershell
wsl -d Ubuntu-22.04
# alternatively...
wsl # will run default Distro
```

5. confirm the linux
```sh
 cat /etc/os-release
# expect a good chunk of text referencing the OS
```

## In Linux Distro, Install [fnm](https://github.com/Schniz/fnm) and Node.js v22.17.0 w/ pnpm

1. install [fnm](https://github.com/Schniz/fnm?tab=readme-ov-file#using-a-script-macoslinux)
```sh
sudo apt install curl unzip -y # may require password
curl -fsSL https://fnm.vercel.app/install | bash
```

2. activate fnm in environment
```sh
source ~/.bashrc
fnm # should be outputting potential subcommands
```

3. install Node by fnm
```sh
fnm install v22.17.0
fnm alias default v22.17.0
fnm use v22.17.0
```

4. confirm defaults for fnm and node
```sh
fnm list # should display v22.17.0 as (default)
node -v # should output "v22.17.0"
```

5. Install pnpm
```sh
corepack enable pnpm
pnpm -v # should output "v10.12.4"
```
