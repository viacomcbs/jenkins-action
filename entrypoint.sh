#!/bin/sh

set -eu

url=$1
user=$2
token=$3
job=$4
parameters=$5

$parameter=$(parameters)

credential="$user:$token"
jobPath="$url/$job"

if [ -n $parameter ]
then
    jobPathParameter="$jobPath/buildWithParameters?$parameters"
else
    jobPathParameter=$jobPath
fi


/usr/bin/curl -X POST -u $credential $jobPathParameter

