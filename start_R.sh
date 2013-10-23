#!/bin/sh

FILENAME=${1:?'Need to filename given'}

echo "$(cat $FILENAME)" "$(echo '\nSys.sleep(60)')" | R --vanilla -q --interactive > /dev/null

