#!/usr/bin/env bats

@test "Verify Homebrew analytics are disabled" {
    run brew analytics
    [ "${status}" -eq 0 ]
    [[ "${output}" =~ ^InfluxDB\ analytics\ are\ disabled. ]]
}
