# TODO - need to test

sudo apt-get install -y build-essential # Install the build-essential package - let this run to completion
sudo apt-get install -y libssl-dev # Install the libssl-dev package - also let this one run to completion

# Download and install NVM
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.6/install.sh | bash
nvm install node
nvm use node

echo "node $(node -v)"
