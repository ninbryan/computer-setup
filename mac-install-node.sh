#!/bin/bash

if [$(command -v brew) == ""]; then
  # install brew
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  # brew exists
  echo "$(brew -v)"
fi

if [$(command -v node) == ""]; then
  # install node@latest
  brew install node
fi

# node and npm exist
echo "node version: $(node -v)"
echo "npm version: $(npm -v)"
