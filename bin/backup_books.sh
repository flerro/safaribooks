#!/bin/bash

cd `dirname $0`
cd ../Books

rclone copy Books "gdrive:O'Reilly Books" -P 
