#!/bin/sh
echo "y" | sudo apt update;echo "y" | sudo apt full-upgrade;echo "y" | sudo apt autoremove;echo "y" | sudo apt-get clean;echo "y" | sudo apt-get autoclean;
#
echo "y" | sudo apt install git
#
git clone https://github.com/thejarlid/INFT225-Final

#
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

# attempts to add the source lines from the snippet below to the correct profile file
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

#
nvm install stable

#
node -v

#
npm install

#
node server.js &

#
echo '"Hello World" - Jason' > INFT225-Final/index.html

#
mv package-lock.json INFT225-Final
