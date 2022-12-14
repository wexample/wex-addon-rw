#!/usr/bin/env bash

varSetTest() {
  wex var/set -n="testVar" -v="yes man"

  _wexTestAssertEqual "$(wex var/get -n="testVar")" "yes man"
}
