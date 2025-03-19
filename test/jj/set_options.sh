#!/bin/bash -e
source dev-container-features-test-lib

function test_config {
  local SCRIPT="test \"\$(jj config get $1)\" = \"$2\""
  check "jj config $1 is set to '$2'" bash -c "$SCRIPT"
}

test_config user.name "User Name"
test_config user.email "user@example.com"
test_config signing.behavior own
test_config signing.backend ssh
test_config signing.key key
reportResults
