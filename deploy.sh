#!/bin/bash

# Script to deploy site

# Use environmental variables from .bashrc for the ssh
USER=$WEBUSER
IP=$WEBIP
DIR=$WEBDIR

# Set up a full remote path, as .profile will not be read when we attempt
# to rsync
REMOTEPATH="$USER@$IP:$DIR"
# user, ip, and public_html directory
#hugo && rsync -avz --delete public/ $WEBUSER@$WEBIP:$WEBDIR
hugo && rsync -avz --delete public/ $REMOTEPATH
