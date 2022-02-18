#!/usr/bin/env bash

set -e

if [[ "${CODESPACES:-}" == 'true' ]]; then

  # gems
  if command -v gem &>/dev/null; then
    echo "Install gems"
    gem install --quiet solargraph rufo
  fi

  # packages
  echo "Install packages"
  sudo apt update && sudo apt install -y silversearcher-ag shellcheck fzf
  curl --silent --fail --location --output "${HOME}/tmp/bat/bat-musl_0.19.0_amd64.deb" --create-dirs https://github.com/sharkdp/bat/releases/download/v0.19.0/bat-musl_0.19.0_amd64.deb
  sudo dpkg -i "${HOME}/tmp/bat/bat-musl_0.19.0_amd64.deb"
  rm -rf "${HOME}/tmp/"

  # set shell to zsh
  echo "Set shell to zsh"
  chsh -s $(which zsh) $(whoami)
  export SHELL="/bin/zsh"

  # starship prompt
  echo "Install starship prompt"
  sh -c "$(curl -fsSL https://starship.rs/install.sh)" -- --yes

  # fonts
  # cd ~/downloads
  # wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/JetBrainsMono.zip
  # mkdir -p ~/.local/share/fonts
  # unzip JetBrainsMono.zip -d ~/.local/share/fonts
  # fc-cache -f -v
  # rm JetBrainsMono.zip
  # cd -
  # sudo apt install fonts-firacode

fi
