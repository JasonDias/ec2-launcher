#!/bin/sh

if [ "x$1" == "x" ] ; then
    echo "Please specify a cluster name."
    exit 1
fi

ec2-describe-instances --filter tag:cluster=$1 --filter tag:type=master | grep ec2 | awk -F'\t' '{ print $4 }'

