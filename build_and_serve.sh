#!/bin/sh
SCRIPT=$(readlink -f $0)
SCRIPTPATH=`dirname $SCRIPT`

docker build -t blog $SCRIPTPATH
docker run -ti --rm \
    -v $SSH_AUTH_SOCK:/tmp/ssh-agent \
    -e SSH_AUTH_SOCK=/tmp/ssh-agent \
    -e WWW_HOST=ebfe.dk \
    -e WWW_PATH=/var/www/html \
    -e WWW_USER=jonas \
    -p 4000:4000 \
    blog \
    jekyll serve --drafts
