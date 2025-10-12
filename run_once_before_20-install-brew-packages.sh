#!/usr/bin/env bash

set -eu

BREW=/opt/homebrew/bin/brew

if [ ! -x $BREW ]; then
  echo "❌ Homebrew not found. Run the 10-install-homebrew step first." >&2
  exit 1
fi

echo "📦 Installing brew packages..."

$BREW install chezmoi

$BREW install 1password-cli

echo "✅ Installed"
