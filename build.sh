#!/usr/bin/env bash

set -exu

git clone --depth 1 --branch v1.2.0 git@github.com:nsqio/nsq.git
cp Dockerfile ./nsq/
cd ./nsq/
docker buildx create --use
docker buildx build  -t eu.gcr.io/ravelin-builds/yavosh/nsq:1.2.0 --platform linux/amd64,linux/arm64 --push .