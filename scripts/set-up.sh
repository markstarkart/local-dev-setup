#!/usr/bin/env bash

printf "This script uses Homebrew to install applications for Mac or Linux. "

# Check if Homebrew is installed
brewLocation=$(which brew)
if [[ $brewLocation == 'brew not found' ]] ; then
    # Install Homebrew
    printf 'Please install Homebrew by running this command in your terminal:\n\n'
    echo '    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"'
    printf '\n'
    echo 'Then run this script again.'
else
    printf '\n\n ✔ Homebrew is installed'

    brewUpdate=$(brew update | grep 'Already up-to-date.')
    if [[ $brewUpdate == 'Already up-to-date.' ]] ; then
        printf '\n ✔ Homebrew is up to date'
    else
        printf '\n ✔ Homebrew has been updated'
    fi

    printf "\n\nBeginning apps' installations. This may take a few minutes.\n"
    echo "Maybe brew some tea ☕?"

    ## Install apps
    brew install --cask google-chrome
    brew install --cask iterm2
    brew install --cask visual-studio-code
    brew install --cask postman
    brew install --cask docker
    brew install --cask nosql-workbench
    brew install --cask zoom
    brew install --cask rectangle
    brew install --cask alfred
    brew install --cask handbrake
    brew install --cask slack
    brew install git
    brew install yarn
    brew install awscli

    printf "\n ✔ All apps are installed"

    # post install 
    brew cleanup

    printf "\n"
    echo " ✔ Homebrew has been cleaned"
    printf "\n"
    echo "All done."
fi