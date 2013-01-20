#!/bin/bash

. ./deploy_credentials.sh

echo Building tarball...
tar cf wwebsite.tar.gz js css img index.html
echo Copying tarball...
scp -i $KEYFILE wwebsite.tar.gz $HOST:~/public_html/wwebsite.tar.gz
echo Extracting files...
ssh -i $KEYFILE "cd public_html && tar xvf wwebsite.tar.gz"
echo Removing tarball
rm wwebsite.tar.gz
