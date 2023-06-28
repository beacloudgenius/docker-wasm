#!/bin/bash

docker buildx build --platform wasi/wasm32 -t cloudgenius/wasm-docker-test .
docker compose up
