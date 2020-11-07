#!/bin/sh
docker run -i --rm -v $(PWD):/usr/app leon/usd-from-gltf:latest "$@" "${@%.*}.usdz"