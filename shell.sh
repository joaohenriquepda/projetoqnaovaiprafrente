#!/bin/bash -e

echo "Script for clean pids/server"

if [ -f tmp/pids/server.pid ];
  then
    echo Deleted
    rm -r tmp/pids/server.pid
  else
    echo Not deleted;
fi


exec "$@"
