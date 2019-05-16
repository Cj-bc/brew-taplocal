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
  res="$(getGithubUserNameFromUrl https://github.com/Cj-bc/brew-taplocal)"

  [ "$res" = "Cj-bc" ]
}

@test "getGithubUserNameFromUrl: ssh protocol" {
  res="$(getGithubUserNameFromUrl github.com:Cj-bc/brew-taplocal)"

  [ "$res" = "Cj-bc" ]
}


