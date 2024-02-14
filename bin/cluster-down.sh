#!/usr/bin/bash

kubectl delete pods test-app
kind delete clusters kind kind-webserver

