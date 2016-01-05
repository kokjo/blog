#!/bin/sh
jekyll build
scp -o StrictHostKeyChecking=no -r _site/* $WWW_USER@$WWW_HOST:$WWW_PATH
