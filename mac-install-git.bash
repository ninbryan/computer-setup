
#!/bin/bash

if [$(command -v brew) == ""]; then
  # install brew
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  # brew exists
  echo "$(brew -v)"
fi

if [$(command -v git) == ""]; then
  brew install git
fi

echo "git path: $(command -v git)"
echo $(git --version)

# man git
