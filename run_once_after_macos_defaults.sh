#!/bin/bash
set -e

echo "🧩 Applying macOS defaults..."

# Disable live conversion in Kotoeri
defaults write com.apple.inputmethod.Kotoeri JIMPrefLiveConversionKey -bool false

# Use dark menu bar and dock
defaults write NSGlobalDomain AppleInterfaceStyle -string Dark

# Disable press-and-hold for keys in favor of key repeat
defaults write 'Apple Global Domain' ApplePressAndHoldEnabled -bool false

# タイプミスを修正
defaults write com.apple.inputmethod.Kotoeri JIMPrefAutocorrectionKey -bool false

# Disable automatic capitalization
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

# 拡張子まで表示する
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# 隠しファイルを表示する設定
defaults write com.apple.Finder AppleShowAllFiles -bool true

echo "✅ macOS defaults applied"
