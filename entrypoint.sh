#!/bin/sh

set -eu

url=$1
user=$2
token=$3
job=$4
parameters=$5

credential="$user:$token"
jobPath="$url/$job"

if [ -n $parameter ]
then
    if [ $parameters == "BRANCH" ]
    then
        parameters="BRANCH=$GITHUB_HEAD_REF"
    fi
    jobPathParameter="$jobPath/buildWithParameters?$parameters"
else
    jobPathParameter=$jobPath
fi


/usr/bin/curl -X POST -u $credential $jobPathParameter

