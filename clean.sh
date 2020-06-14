#!/bin/sh

for I in OEBPS META-INF mime; do
 echo "Removing $I..."	
 find Books -name 'META-INF' -type d -exec rm -rf {} \;
done
