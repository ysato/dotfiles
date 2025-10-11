#!/bin/bash
set -e

# Homebrew が未インストールなら導入
if ! command -v brew &> /dev/null; then
  echo "🍺 Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo >> /Users/sato/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/sato/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# 必要ツールを導入（chezmoi / 1Password CLI）
brew install chezmoi 1password-cli

echo "✅ Installed"
