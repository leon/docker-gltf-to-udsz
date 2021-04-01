#!/bin/sh
docker run -i --rm -v $(PWD):/usr/app --entrypoint="/bin/sh" leon/usd-from-gltf:latest -c 'for f in *.glb; do echo "Processing $f"; usd_from_gltf "$f" "${f%.*}.usdz"; done'
echo "Done"
