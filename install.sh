#!/bin/sh
echo -e '\n\nsudo apt update\n';echo "y" | sudo apt update;echo -e '\nsudo apt full-upgrade\n';echo "y" | sudo apt full-upgrade;echo -e '\nsudo apt autoremove\n';echo "y" | sudo apt autoremove;echo -e '\nsudo apt-get clean\n';echo "y" | sudo apt-get clean;echo -e '\nsudo apt-get autoclean\n';echo "y" | sudo apt-get autoclean;
#
echo "y" | sudo apt install git net-tools;sudo apt-get update;sudo apt-get install inetutils-traceroute
#
git clone https://github.com/thejarlid/INFT225-Final

#
echo '"Hello World" - Jason' > INFT225-Final/index.html

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
