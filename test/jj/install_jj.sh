#!/bin/bash -e
source dev-container-features-test-lib
check "jj is available" jj --version
reportResults
