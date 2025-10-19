#!/usr/bin/env bats

@test "formulas are installed" {
    brews=(
        dockutil
        bats-core
    )

    for pkg in "${brews[@]}"; do
        run bash -lc "brew ls --versions --formula ${pkg}"
        [ "$status" -eq 0 ]
        [ -n "$output" ]
  done
}

@test "casks are installed" {
    casks=(
        1password-cli
    )

    for pkg in "${casks[@]}"; do
        run bash -lc "brew ls --versions --cask ${pkg}"
        [ "$status" -eq 0 ]
        [ -n "$output" ]
  done
}