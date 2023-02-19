#!/bin/bash

# install node(v14)
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -

sudo apt install nodejs

# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

source ~/.bashrc
