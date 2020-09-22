#!/bin/bash

if [ "n$1" == "n" ]; then
    echo "usage: $0 book_id"
    exit
fi

cd `dirname $0`
cd ..

# echo `pwd`
# . venv/bin/activate

source .env

if [ $? -gt 0 ]; then
    echo "Please add credentials to .env file"
    exit
fi

python safaribooks.py --cred "$SAFARI_USER:$SAFARI_PASSWORD" $1

