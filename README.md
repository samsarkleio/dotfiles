# dotfiles

This repo uses [dotbot](https://github.com/anishathalye/dotbot) to bootstrap our dotfiles.

The main entry point is the `install` script, which initializes dotbot and runs the steps described in the `install.conf.yaml` file.

The `install.conf.yaml` file describes files that need to be copied/linked and scripts that need to be run.

In order to support multiple platforms (linux, macOS), some files are only copied if certain environment variables exist.

Platform-specific files:
- oh-my-zsh/custom
  - codespace.zsh
  - macos.sh
- scripts/
  - codespace-init.sh
  - macos-init.sh

Any files present in the `oh-my-zsh/custom` folder will get run by oh-my-zsh, so we only copy files in there based on the platform we're running.
