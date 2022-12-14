#!/usr/bin/env bash

varClearTest() {
  wex var/set -n="testVar" -v="yes man"
  wex var/clear -n="testVar"

  _wexTestAssertEqual "$(wex var/get -n="testVar")" ""
}
