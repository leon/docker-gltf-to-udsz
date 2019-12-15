# Convert .glb and .gltf into apples .usdz quicklook files.

It uses this repo under the hood.
https://github.com/google/usd_from_gltf#compatibility

# Run
Using helper script that will output a usdz file with same name as input
```
./run.sh my-file-in-same-directory.glb
```

Using raw docker command
```
docker run \
  --rm \
  -v $(PWD):/usr/app \
  leon/usd-from-gltf:latest \
  inputfile.glb \
  outputfile.usdz

# or on one line
docker run -it --rm -v $(PWD):/usr/app leon/usd-from-gltf:latest inputfile.glb outputfile.usdz
```

# Build
```
./build.sh
```
