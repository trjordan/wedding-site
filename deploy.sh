#!/bin/bash

. ./deploy_credentials.sh

echo Building tarball...
tar cf wwebsite.tar.gz js css img index.html directions/index.html event/index.html staying/index.html story/index.html
echo Copying tarball...
scp -P 21098 -i $KEYFILE wwebsite.tar.gz $USER@$HOST:~/public_html/wwebsite.tar.gz
echo Extracting files...
ssh -p 21098 -i $KEYFILE $USER@$HOST "cd public_html && tar xvf wwebsite.tar.gz"
echo Removing tarball
rm wwebsite.tar.gz
