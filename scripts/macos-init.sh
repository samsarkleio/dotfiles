#!/usr/bin/env bash

set -e

if [[ $(uname) == 'Darwin' ]]; then
  echo "macOS init..."

  # install fonts
  # cd ~/Downloads
  # wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/JetBrainsMono.zip
  # mkdir -p /Library/Fonts
  # unzip JetBrainsMono.zip -d /Library/Fonts
  # fc-cache -f -v
  # rm JetBrainsMono.zip
  # cd -

  # brew tap homebrew/cask-fonts
  # brew install --cask font-fira-code
fi
