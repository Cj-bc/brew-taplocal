#!/usr/bin/env bats
#
#
# Copyright 2018 (c) Cj-bc
# This software is released under MIT License
#
# @(#) version -

setup() {
  source ./brew-taplocal
}

@test "getGithubUserNameFromUrl: https protocol" {
  res="$(getGithubUserNameFromUrl 'https://github.com/Cj-bc/brew-taplocal')"

  [ "$res" = "Cj-bc" ]
}

@test "getGithubUserNameFromUrl: ssh protocol" {
  res="$(getGithubUserNameFromUrl 'github.com:Cj-bc/brew-taplocal')"

  [ "$res" = "Cj-bc" ]
}

@test "validatePath: formual repository" {
  run validatePath "foo/homebrew-brew-taplocal"
  [ $status -eq 0 ]
}

@test "validatePath: non formula repository" {
  run validatePath "foo/brew-taplocal"
  [ $status -ne 0 ]
}
