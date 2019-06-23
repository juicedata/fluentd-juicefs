#!/bin/sh

set -o errexit

juicefs auth ${JFS_NAME} --token ${JFS_TOKEN} --accesskey ${JFS_ACCESSKEY} --secretkey ${JFS_SECRETKEY}
juicefs mount ${JFS_NAME} ${JFS_MOUNTPOINT}
