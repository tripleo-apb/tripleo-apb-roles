#!/bin/bash

service=$1
shift

docker run --rm \
    --user root \
    -v /root/.kube:/opt/apb/.kube \
    tripleo-k8s-$service deprovision \
    --extra-vars config_file=/opt/apb/.kube/config $*
