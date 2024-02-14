#!/usr/bin/bash

docker build -t kind-webserver:jtm-local .
kind load docker-image kind-webserver:jtm-local
