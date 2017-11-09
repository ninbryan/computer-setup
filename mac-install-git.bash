#!/bin/bash

echo "running mac-install-git.bash script"

if [$(command -v brew) == ""]; then
  echo "--- downloading and installing brew ---"
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "--- brew exists ---"
  echo "$(brew -v)"
fi

brew install git

echo "git path: $(command -v git)"
echo $(git --version)
