#!/usr/bin/env bash

if [[ "${CODESPACES:-}" == 'true' ]]; then

  # change shell to zsh
  sudo chsh -s $(which zsh) $(whoami)
  export SHELL="/bin/zsh"

  # install starship prompt
  sh -c "$(curl -fsSL https://starship.rs/install.sh)" -- --yes

fi
