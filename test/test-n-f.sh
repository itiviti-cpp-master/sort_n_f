#!/bin/sh

CMD=$1
shift
for arg do
    $CMD -n -f $arg | diff -u --from-file ${arg}.eta.nf - || exit 1
done
