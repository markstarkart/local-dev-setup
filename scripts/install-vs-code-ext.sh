#!/usr/bin/env bash

printf "This script uses VSCode to install applications for Mac or Linux. "

# Check if VSCode is installed
vsCodeLocation=$(which code)
if [[ $vsCodeLocation == 'vsCode not found' ]] ; then
    # Install VSCode
    printf 'Time to install VSCode by running this Homebrew command: brew install --cask visual-studio-code'
    printf '\n'
    brew install --cask visual-studio-code
else
    printf '\n\n ✔ VSCode is installed'

    brewUpdate=$(brew upgrade --cask visual-studio-code | grep 'Already up-to-date.')
    if [[ $brewUpdate == 'Already up-to-date.' ]] ; then
        printf '\n ✔ VSCode is up to date'
    else
        printf '\n ✔ VSCode has been updated'
    fi

    printf "\n\nBeginning extensions' installations. This may take a few minutes.\n"
    echo "Maybe brew some tea ☕?"

     ## Install extensions

    code --install-extension amazonwebservices.aws-toolkit-vscode
    code --install-extension bierner.markdown-preview-github-styles
    code --install-extension chrmarti.regex
    code --install-extension DavidAnson.vscode-markdownlint
    code --install-extension dbaeumer.vscode-eslint
    code --install-extension donjayamanne.githistory
    code --install-extension eamodio.gitlens
    code --install-extension EditorConfig.EditorConfig
    code --install-extension esbenp.prettier-vscode
    code --install-extension firsttris.vscode-jest-runner
    code --install-extension jebbs.plantuml
    code --install-extension liamhammett.inline-parameters
    code --install-extension mike-co.import-sorter
    code --install-extension ms-azuretools.vscode-docker
    code --install-extension ms-vsliveshare.vsliveshare
    code --install-extension pflannery.vscode-versionlens
    code --install-extension q.typescript-mono-repo-import-helper
    code --install-extension redhat.vscode-yaml
    code --install-extension richie5um2.vscode-sort-json
    code --install-extension streetsidesoftware.code-spell-checker
    code --install-extension tht13.html-preview-vscode
    code --install-extension tomoki1207.pdf
    code --install-extension usernamehw.errorlens
    code --install-extension yzane.markdown-pdf
    code --install-extension yzhang.markdown-all-in-one

    printf "\n ✔ All extensions are installed"
fi