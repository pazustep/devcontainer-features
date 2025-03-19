#!/bin/bash -e
source dev-container-features-test-lib
check "cargo-binstall is installed" cargo binstall -vV
reportResults
