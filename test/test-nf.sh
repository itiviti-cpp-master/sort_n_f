#!/bin/sh

CMD=$1
shift
for arg do
    $CMD -nf $arg | diff -u --from-file ${arg}.eta.ur - || exit 1
done
