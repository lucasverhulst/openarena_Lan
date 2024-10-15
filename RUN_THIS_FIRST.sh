#!/bin/sh

if [ "$HAS_RUN"==0 ];
then
    # the rest of the commands to run on the first startup go here

    export HAS_RUN=1
fi

echo $HAS_RUN
