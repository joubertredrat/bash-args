#!/usr/bin/env bats

@test "test with equals and one hyphen" {
    result=$($(pwd)/script.sh -foo=bar)
    [ "$result" = "bar" ]
}

@test "test with equals and two hyphen" {
    result=$($(pwd)/script.sh --foo=bar)
    [ "$result" = "bar" ]
}

@test "test without equals and one hyphen" {
    result=$($(pwd)/script.sh -foo bar)
    [ "$result" = "bar" ]
}

@test "test without equals and two hyphen" {
    result=$($(pwd)/script.sh --foo bar)
    [ "$result" = "bar" ]
}