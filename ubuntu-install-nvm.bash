# TODO - need to test

if [ ! $(command -v nvm) ] ; then
  wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.6/install.sh | bash
  echo 'export NVM_DIR="$HOME/.nvm"' >> $HOME/.bashrc
  echo '[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm' >> $HOME/.bashrc
  source $HOME/.bashrc
fi

echo "nvm $(nvm -v)"

nvm install node
nvm use node

echo "node $(node -v)"
