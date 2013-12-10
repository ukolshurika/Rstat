#!/bin/sh

FILENAME=${1:?'Need to filename given'}
VARIANT=${2:?'Need to variant number given'}
TASK_NUM=${1##*/}       # trim path
TASK_NUM=${TASK_NUM%.*} # trim extension

if [ ! -f $FILENAME ] || [ ! -f data/$TASK_NUM/$VARIANT.data ]; then
    echo "File not found!"
    exit
fi

#echo "$(cat $FILENAME)" "$(echo '\nSys.sleep(60)')" | R data/$TASK_NUM/$VARIANT.data --vanilla -q --interactive > /dev/null
R data/$TASK_NUM/$VARIANT.data --vanilla -q --interactive < $FILENAME > /dev/null

