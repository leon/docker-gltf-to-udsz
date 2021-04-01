# Convert .glb and .gltf into apples .usdz quicklook files.

It uses this repo under the hood.
https://github.com/google/usd_from_gltf#compatibility

# Run

Using helper script that will output a usdz file with same name as input

Via Npm or yarn

```
npm start examples/exterior.glb
yarn start examples/exterior.glb
```

Directly via the shellscript

```
./start.sh examples/exterior.glb
```

Using raw docker command

```
docker run \
  --rm \
  -v $(PWD):/usr/app \
  leon/usd-from-gltf:latest \
  examples/exterior.glb \
  examples/exterior.usdz

# or on one line
docker run --rm -v $(PWD):/usr/app leon/usd-from-gltf:latest examples/exterior.glb examples/exterior.usdz
```

# Batch Run

To be able to batch convert files, place all your glb files in a directory.
then `cd` to that directory,
now run the `batch.sh` file from that directory.
it will pick up the directory that you started it from and convert all the .glb files to .usdz

```
cd examples
../batch.sh
```

# Build

```
./build.sh
```
