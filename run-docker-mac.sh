#!/bin/bash

# brew install socat
# enter  tcp://localhost:2376   as an API URL in IDE
# https://confluence.jetbrains.com/display/PhpStorm/Docker+Support+in+PhpStorm
# You should provide the configuration name (Docker in our case),
# API URL (tcp://localhost:2375  for MacOSX and Windows, unix:///var/run/docker.sock  for Linux).


socat TCP-LISTEN:2376,reuseaddr,fork,bind=localhost UNIX-CONNECT:/var/run/docker.sock &