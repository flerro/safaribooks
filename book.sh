#!/bin/bash

cd `dirname $0`
source venv/bin/activate

if [ ! -f ".env" ]; then
    echo "Please add credentials to .env file"
    exit
fi

source .env

if [ "n$1" == "n" ]; then
    echo "usage: $0 book_id"
    exit
fi

python safaribooks.py --cred "$SAFARI_USER:$SAFARI_PASSWORD" $1

for I in OEBPS META-INF mime; do
 echo "Removing $I..."	
 find Books -name 'META-INF' -type d -exec rm -rf {} \;
done
