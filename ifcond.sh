#!/bin/bash

USER=DevOps
HOSTNAME=VisualPath

if [ $USER != $HOSTNAME ]

then

echo "$USER != $HOSTNAME"

else

echo "$USER@$HOSTNAME"

fi

if [ -f hosts ]

then

pwd
ls -ltr hosts
rm hosts

echo "File deleted"

else

echo "File not exists"

fi

