#!/usr/bin/env bash

set -eufo pipefail

# 日本語入力（ことえり／macOS日本語IM）でライブ変換を無効にする設定
defaults write com.apple.inputmethod.Kotoeri JIMPrefLiveConversionKey -bool false

# 日本語入力（ことえり）で自動修正（誤字などの自動置換）を無効にする設定
defaults write com.apple.inputmethod.Kotoeri JIMPrefAutocorrectionKey -bool false

# キー長押しで文字を連続入力（リピート入力）できるようにし、アクセント文字選択メニューを無効にする
defaults write -g ApplePressAndHoldEnabled -bool false

# macOS全体の外観モードを「ダークモード」に設定
defaults write -g AppleInterfaceStyle -string Dark

# 文頭の自動大文字化（例: 英文入力時の自動Capitalization）を無効にする
defaults write -g NSAutomaticCapitalizationEnabled -bool false

# 文末の自動ピリオド入力（ダブルスペース → “.”）を無効化
defaults write -g NSAutomaticPeriodSubstitutionEnabled -int 0

# スペル自動修正を無効化
defaults write -g NSAutomaticSpellingCorrectionEnabled -int 0

# Finderで全てのファイル拡張子を表示する（例: “.txt”, “.jpg”など）
defaults write -g AppleShowAllExtensions -bool true

# Dockに最近使ったアプリを表示しない
defaults write com.apple.dock show-recents -int 0

# デスクトップ表示ジェスチャーを無効化
defaults write com.apple.dock showDesktopGestureEnabled -int 0

# Launchpad起動ジェスチャーを無効化
#defaults write com.apple.dock showLaunchpadGestureEnabled -int 0

# FinderのタイトルバーにフルPOSIXパスを表示（例：/Users/username/Desktop）
defaults write com.apple.finder _FXShowPosixPathInTitle -int 1

# Finderの表示スタイルをリストビュー（Nlsv）に設定
defaults write com.apple.finder FXPreferredViewStyle -string Nlsv

# フォルダを常にリストの先頭に表示
defaults write com.apple.finder _FXSortFoldersFirst -int 1

# Finderで隠しファイル（"."で始まるファイル）を表示する
defaults write com.apple.finder AppleShowAllFiles -bool true
