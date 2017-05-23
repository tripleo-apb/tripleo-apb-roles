#!/bin/bash

service=$1
shift

cd $service-apb
docker build -t tripleo-k8s-$service . $*
