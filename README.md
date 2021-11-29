# NSFW detection

A Docker image with [nsfwjs](https://github.com/infinitered/nsfwjs), TensorFlow.js and Express server.

## Run the server

```sh
docker run -it --rm ghcr.io/seanghay/nsfwjs-server:latest
```

### Request

```sh
curl --request POST http://localhost:8080/ \
  --header 'Content-Type: multipart/form-data' \
  --data-binary 'image=@/full/path/to/picture.jpg'
```

### Response 

> an example

```json
[
  {
    "className": "Neutral",
    "probability": 0.7651876211166382
  },
  {
    "className": "Drawing",
    "probability": 0.22617404162883759
  },
  {
    "className": "Sexy",
    "probability": 0.0067122685723006725
  },
  {
    "className": "P*rn",
    "probability": 0.001053938060067594
  },
  {
    "className": "H*ntai",
    "probability": 0.000872117409016937
  }
]
```
