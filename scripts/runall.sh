#!/usr/bin/env bash

pwd=`pwd`
filelist=`ls $dir`
echo $filelist
for file in $filelist:
do
    echo $file
    $isrun=`grep 'run-' $file`
    if [ ! -d $pwd'/'$file ] && [ -z $ $isrun]; then
        `sh -x $pwd'/'$file`
    fi
done