#!/bin/sh

CMD=$1
shift
for arg do
    cat $arg | $CMD -n | diff -u --from-file ${arg}.eta.n - || exit 1
done
