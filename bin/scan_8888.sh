#!/bin/bash

sudo lsof -i -P -n | grep 8888 | awk '{print $2}'