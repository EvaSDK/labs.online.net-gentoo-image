#!/bin/bash

ROOTDIR=${ROOTDIR:-/}

for i in {1..6}; do
    echo "echo manual > $ROOTDIR/etc/init/tty$i.override"
done
