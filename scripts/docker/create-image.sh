#!/bin/bash

dir=$(dirname $0)

cd $dir/image
docker build -t mykernel .
cd -
