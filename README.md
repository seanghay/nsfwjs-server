# NSFW detection

An image with [nsfwjs](https://github.com/infinitered/nsfwjs), TensorFlow.js and Express server.

## Run

```sh
docker run -it --rm ghcr.io/seanghay/nsfwjs-server:latest
```

```sh
curl --request POST http://localhost:8080/ \
  --header 'Content-Type: multipart/form-data' \
  --data-binary 'image=@/full/path/to/picture.jpg'
```
