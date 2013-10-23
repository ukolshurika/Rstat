#!/bin/sh

FILENAME=${1:?'Need to filename given'}
VARIANT=${2:?'Need to variant number given'}

if [ ! -f $FILENAME ] || [ ! -f data/$VARIANT.data ]; then
    echo "File not found!"
    exit
fi

echo "$(cat $FILENAME)" "$(echo '\nSys.sleep(60)')" | R data/$VARIANT.data --vanilla -q --interactive > /dev/null

