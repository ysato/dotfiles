#!/usr/bin/env bash

if [ "$(uname)" != "Darwin" ]; then
  echo "Not macOS!"
  exit 1
fi

# Setting bash as default shell
chsh -s /bin/bash

# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

DOTFILES_DIR=$(dirname $(dirname $0))

# Build plists from scaffold
sed -e "s|_DUMMY_WORKING_DIRECTORY_|${HOME}|g" "${DOTFILES_DIR}/iterm2/com.googlecode.iterm2.plist.scaffold" > "${DOTFILES_DIR}/iterm2/com.googlecode.iterm2.plist"
