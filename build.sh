#!/bin/sh

# Build USD container
docker build usd -t leon/usd

# Build gltf_to_usdz container
docker build usd-from-gltf -t leon/usd-from-gltf

# Push
docker push leon/usd:latest
docker push leon/usd-from-gltf:latest
