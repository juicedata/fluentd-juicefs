#!/bin/sh

apt-get update && apt-get install -y --no-install-recommends fuse python curl
curl -L https://juicefs.com/static/juicefs -o /bin/juicefs && chmod +x /bin/juicefs
juicefs version
