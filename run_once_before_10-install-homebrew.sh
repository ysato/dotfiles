#!/usr/bin/env bash

set -e

if ! command -v brew > /dev/null 2>&1; then
  echo "🍺 Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  echo >> /Users/sato/.zprofile
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/sato/.zprofile

  echo "✅ Homebrew installed"
else
  echo "ℹ️ Homebrew already installed, skipping."
fi
