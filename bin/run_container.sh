#!/bin/bash

docker run --gpus all -p 127.0.0.1:8888:8888 --rm -it my-dl-img $1