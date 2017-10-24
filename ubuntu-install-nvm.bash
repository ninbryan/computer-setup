# TODO - need to test
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.6/install.sh | bash
source $HOME/.bashrc

echo "nvm $(nvm -v)"

nvm install node
nvm use node

echo "node $(node -v)"
