#!/usr/bin/env bash

varGetTest() {
  wex var/set -n="testVar" -v="yes"

  _wexTestAssertEqual "$(wex var/get -n="testVar")" "yes"

  _wexTestAssertEqual "$(wex var/get -n="testVar2")" ""
}
