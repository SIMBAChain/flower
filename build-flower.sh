#!/bin/bash

curl https://raw.githubusercontent.com/mher/flower/master/Dockerfile --output Dockerfile
docker buildx build --push --platform linux/arm/v7,linux/arm64/v8,linux/amd64 -t simbachain/flower:latest .
rm Dockerfile
