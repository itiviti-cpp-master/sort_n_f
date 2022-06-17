#!/bin/sh

CMD=$1
shift
for arg do
    cat $arg | $CMD -f | diff -u --from-file ${arg}.eta.f - || exit 1
done
