#!/usr/bin/env bash

if [ "$(uname)" != "Darwin" ]; then
  echo "Not macOS!"
  exit 1
fi

###############################################################################
# General UI/UX                                                               #
###############################################################################

# Use dark menu bar and dock
defaults write NSGlobalDomain AppleInterfaceStyle -string Dark

# Disable press-and-hold for keys in favor of key repeat
defaults write 'Apple Global Domain' ApplePressAndHoldEnabled -bool false

# ライブ変換
defaults write com.apple.inputmethod.Kotoeri JIMPrefLiveConversionKey -bool false

# タイプミスを修正
defaults write com.apple.inputmethod.Kotoeri JIMPrefAutocorrectionKey -bool false

# Disable automatic capitalization
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

# 音声入力のショートカット
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 164 "
  <dict>
    <key>enabled</key><false/>
    <key>value</key><dict>
      <key>parameters</key>
      <array>
        <integer>65535</integer>
        <integer>65535</integer>
        <integer>0</integer>
      </array>
      <key>type</key><string>standard</string>
    </dict>
  </dict>
"

###############################################################################
# Dock                                                                        #
###############################################################################

# Do not display recent apps in the Dock
defaults write com.apple.dock show-recents -bool false

###############################################################################
# Finder                                                                      #
###############################################################################

# Show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# Show all file extensions inside the Finder
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

###############################################################################
# Kill affected applications                                                  #
###############################################################################

for app in "Dock" \
  "Finder"
do
  killall "${app}" &> /dev/null
done
