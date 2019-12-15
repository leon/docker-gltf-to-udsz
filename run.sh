#!/bin/sh
docker run -it --rm -v $(PWD):/usr/app leon/usd-from-gltf:latest "$@" "${@%.*}.usdz"