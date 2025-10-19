#!/usr/bin/env bats

@test "Verify Dock items are removed" {
    removed_labels=(
        Launchpad
    	Safari
    	"メッセージ"
    	"メール"
    	"マップ"
    	"写真"
    	FaceTime
    	"カレンダー"
    	"連絡先"
    	"リマインダー"
    	"メモ"
    	"フリーボード"
    	TV
    	"ミュージック"
    	"App Store"
    )

    for label in "${removed_labels[@]}"; do
        run dockutil --find "${label}"
        [ "${status}" -ne 0 ]
    done
}
