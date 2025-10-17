#!/usr/bin/env bats

@test "Verify macOS defaults settings" {
    run defaults read com.apple.inputmethod.Kotoeri JIMPrefLiveConversionKey
    [ "${status}" -eq 0 ]
    [ "${output}" -eq 0 ]

    # 日本語入力（ことえり／macOS日本語IM）でライブ変換を無効にする設定
    run defaults read com.apple.inputmethod.Kotoeri JIMPrefLiveConversionKey
    [ "${status}" -eq 0 ]
    [ "${output}" -eq 0 ]

    # 日本語入力（ことえり）で自動修正（誤字などの自動置換）を無効にする設定
    run defaults read com.apple.inputmethod.Kotoeri JIMPrefAutocorrectionKey
    [ "${status}" -eq 0 ]
    [ "${output}" -eq 0 ]

    # キー長押しで文字を連続入力（リピート入力）できるようにし、アクセント文字選択メニューを無効にする
    run defaults read -g ApplePressAndHoldEnabled
    [ "${status}" -eq 0 ]
    [ "${output}" -eq 0 ]

    # macOS全体の外観モードを「ダークモード」に設定
    run defaults read -g AppleInterfaceStyle
    [ "${status}" -eq 0 ]
    [ "${output}" = "Dark" ]

    # 文頭の自動大文字化（例: 英文入力時の自動Capitalization）を無効にする
    run defaults read -g NSAutomaticCapitalizationEnabled
    [ "${status}" -eq 0 ]
    [ "${output}" -eq 0 ]

    # 文末の自動ピリオド入力（ダブルスペース → “.”）を無効化
    run defaults read -g NSAutomaticPeriodSubstitutionEnabled
    [ "${status}" -eq 0 ]
    [ "${output}" -eq 0 ]

    # スペル自動修正を無効化
    run defaults read -g NSAutomaticSpellingCorrectionEnabled
    [ "${status}" -eq 0 ]
    [ "${output}" -eq 0 ]

    # Finderで全てのファイル拡張子を表示する（例: “.txt”, “.jpg”など）
    run defaults read -g AppleShowAllExtensions
    [ "${status}" -eq 0 ]
    [ "${output}" -eq 1 ]

    # Dockに最近使ったアプリを表示しない
    run defaults read com.apple.dock show-recents
    [ "${status}" -eq 0 ]
    [ "${output}" -eq 0 ]

    # デスクトップ表示ジェスチャーを無効化
    run defaults read com.apple.dock showDesktopGestureEnabled
    [ "${status}" -eq 0 ]
    [ "${output}" -eq 0 ]

    # Launchpad起動ジェスチャーを無効化
    # run defaults read com.apple.dock showLaunchpadGestureEnabled
    [ "${status}" -eq 0 ]
    [ "${output}" -eq 0 ]

    # FinderのタイトルバーにフルPOSIXパスを表示（例：/Users/username/Desktop）
    run defaults read com.apple.finder _FXShowPosixPathInTitle
    [ "${status}" -eq 0 ]
    [ "${output}" -eq 1 ]

    # Finderの表示スタイルをリストビュー（Nlsv）に設定
    run defaults read com.apple.finder FXPreferredViewStyle
    [ "${status}" -eq 0 ]
    [ "${output}" = "Nlsv" ]

    # フォルダを常にリストの先頭に表示
    run defaults read com.apple.finder _FXSortFoldersFirst
    [ "${status}" -eq 0 ]
    [ "${output}" -eq 1 ]

    # Finderで隠しファイル（"."で始まるファイル）を表示する
    run defaults read com.apple.finder AppleShowAllFiles
    [ "${status}" -eq 0 ]
    [ "${output}" -eq 1 ]
}
