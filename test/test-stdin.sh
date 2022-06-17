#!/bin/sh

CMD=$1
shift
for arg do
    cat $arg | $CMD - | diff -u --from-file ${arg}.eta - || exit 1
done
