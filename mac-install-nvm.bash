#!/bin/bash

if [ $(command -v brew) == "" ]; then
  # install brew
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  # brew exists
  echo "$(brew -v)"
fi

if [ ! $(brew --prefix nvm) ]; then
  # brew install nvm
  brew install nvm
fi

testnvm=$(grep "NVM_DIR" "$HOME/.bashrc" --null)
if [ "$testnvm" == "" ]; then
  echo "appending nvm script to $HOME/.bashrc :"
  echo "--------------------------------------------------------"
  echo "# This loads nvm"
  nvm_script='
export NVM_DIR="$HOME/.nvm";
nvm_sh_dir=`brew --prefix nvm`;
[ -f "$nvm_sh_dir/nvm.sh" ] && . "$nvm_sh_dir/nvm.sh";
unset nvm_sh_dir;
'
  echo "$nvm_script"
  echo "--------------------------------------------------------"
  echo "# This loads nvm" >> $HOME/.bashrc
  echo $nvm_script >> $HOME/.bashrc
else
  echo "$HOME/.bashrc includes nvm script"
  echo "$testnvm"
fi
unset testnvm

if [ ! $(command -v nvm) ]; then
  echo "source $HOME/.bashrc"
  source $HOME/.bashrc
fi

echo "nvm version: $(nvm --version)"
echo ""
echo 'For Long Term Support, run: "nvm install --lts"'

