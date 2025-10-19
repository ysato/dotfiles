#!/usr/bin/env bash

set -eufo pipefail

trap 'killall Dock' EXIT

declare -a remove_labels=(
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

for label in "${remove_labels[@]}"; do
	dockutil --no-restart --remove "${label}" || true
done
