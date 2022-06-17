#!/bin/sh

CMD=$1
shift
for arg do
    cat $arg | $CMD -nf | diff -u --from-file ${arg}.eta.nf - || exit 1
done
