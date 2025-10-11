#!/usr/bin/env bash

set -e

if ! command -v brew > /dev/null 2>&1; then
  echo "❌ Homebrew not found. Run the 10-install-homebrew step first." >&2
  exit 1
fi

eval "$(/opt/homebrew/bin/brew shellenv)"

echo "📦 Installing brew packages..."

brew install chezmoi

brew install 1password-cli

echo "✅ Installed"
