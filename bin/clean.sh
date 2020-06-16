#!/bin/sh

cd `dirname $0`
cd ../Books

for I in OEBPS META-INF mime; do
 echo "Removing $I..."	
 find Books -name "$I" -type d -exec rm -rf {} \;
done
