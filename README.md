# Simple HTTP web server built in Rust compiled to WebAssembly and hosted using Docker

## Prerequisites

- Docker desktop is installed
- ContainerD images for Docker desktop is enabled

### To enable ContainerD images for Docker desktop:

1. Open Docker desktop
2. Navigate to docker settings
3. Navigate to "Features in development"
4. Select "Use containerd for pulling and storing images"
5. Click apply and restart

## To run:

Make sure that if you open the dockerfile, you check that it has been saved using LF (Line Feed) and not CRLF (Carriage Return Line Feed). For VSCode, this can be seen and changed through the status bar

```bash
git clone https://github.com/cloudgenius/docker-wasm.git

cd ./docker-wasm
```

If using bash:

```bash
bash run.sh
```

If using other:

```bash
docker buildx build --push --platform wasi/wasm32 -t cloudgenius/docker-wasm .
docker compose up
```

Hello world from Rust running with Wasm! Send POST data to /echo to have it echoed back to you

curl -d "Hello Cloud Genius" -X POST http://localhost:8080/echo
curl -d "param1=value1&param2=value2" -X POST http://localhost:8080/echo
