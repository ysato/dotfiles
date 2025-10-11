#!/usr/bin/env bash

set -e

if command -v brew > /dev/null 2>&1; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
else
  echo "❌ Homebrew not found. Run the 10-install-homebrew step first." >&2
  exit 1
fi

echo "📦 Installing brew packages..."

brew install chezmoi

brew install 1password-cli

echo "✅ Installed"
