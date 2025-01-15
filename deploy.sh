#!/bin/bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# switch to the compatible node version
nvm use 14 && node -v

# build the project
npm run build

# switch to the latest node
nvm use 20

# install firebase tools
npm install -g firebase-tools

# deploy the project
firebase deploy --only hosting
