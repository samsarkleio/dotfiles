#!/usr/bin/env bash

set -e

if [[ "${CODESPACES:-}" == 'true' ]]; then

  set -x
  echo $(whoami)
  echo "change shell to zsh"
  sudo chsh -s $(which zsh) $(whoami)
  export SHELL="/bin/zsh"
  set +x

  echo "install starship prompt"
  sh -c "$(curl -fsSL https://starship.rs/install.sh)" -- --yes

fi
