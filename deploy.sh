#!/bin/bash

. ./deploy_credentials.sh

ftp -inv $HOST << EOF

user $USER $PASS
put index.html

bye
EOF
