#!/usr/bin/env bash

pwd=`pwd`
filelist=`ls $dir`
echo $filelist
for file in $filelist:
do
    if [ ! -f $pwd'/'$file ]; then
        cd $file
        cargo build --release
        cd $pwd
    fi
done