#!/bin/bash

dir=$(dirname $0)
rootdir=$dir/../../

cd $rootdir
rootdirabs=$(pwd)
cd - > /dev/null

created=$(docker ps -f name=mykernel -q -a)
if [ ${#created} -gt 0 ]; then
    docker exec mykernel make $@
    exit 0
fi

docker run -v $rootdirabs:/root/mykernel -P --name mykernel mykernel make $@
