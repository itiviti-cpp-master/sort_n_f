#!/bin/sh

CMD=$1
shift
for arg do
    $CMD -f -n $arg | diff -u --from-file ${arg}.eta.nf - || exit 1
done
