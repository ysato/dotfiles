#!/usr/bin/env bash

set -eufo pipefail

declare -a brews=(
    dockutil
    bats-core
)

declare -a casks=(
    1password-cli
)

brew bundle --file=/dev/stdin <<EOF
    $(printf '%s\n' "${brews[@]}" | LC_ALL=C sort -u | awk '{printf "brew \"%s\"\n", $0}')
    $(printf '%s\n' "${casks[@]}" | LC_ALL=C sort -u | awk '{printf "cask \"%s\"\n", $0}')
EOF
