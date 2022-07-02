#!/bin/bash

docker run --gpus all -v $PWD:/tmp -w /tmp -p 127.0.0.1:8888:8888 --rm my-dl-img