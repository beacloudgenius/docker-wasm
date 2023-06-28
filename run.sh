#!/bin/bash

docker buildx build --push --platform wasi/wasm32 -t cloudgenius/docker-wasm .
docker compose up
