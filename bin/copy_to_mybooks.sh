#!/bin/bash

DEST=$HOME/Books

cd `dirname $0`
cd ../Books

for I in `find . -name '*.epub'`;
    F=`echo | sed 's:/.*:.epub:g' | tr ' ' '_' | tr -d '()'` 
    echo "Copying $F..."
    cp "{}" ~/Books/$F
done