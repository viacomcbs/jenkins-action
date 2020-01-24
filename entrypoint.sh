#!/bin/sh

set -eu

url=$1
user=$2
token=$3
job=$4
parameters=$5

echo $(parameters)

credential="$user:$token"
jobPath="$url/$job"

if [ -n $parameters ]
then
    if [ $parameters == GITHUB_* ]
        $parameter=$(parameters)
        echo $parameter
        jobPathParameter="$jobPath/buildWithParameters?$parameter"
    else
        jobPathParameter="$jobPath/buildWithParameters?$parameters"
    fi
else
    jobPathParameter=$jobPath
fi


/usr/bin/curl -X POST -u $credential $jobPathParameter

