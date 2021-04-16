#!/usr/bin/env bash

docker buildx build  -t yavosh/nsq:1.2.0 --platform linux/amd64,linux/arm64 --push .