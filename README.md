Per eseguire l'inferenza tramite immagine Docker dopo aver fatto ```docker build```:

```bash
docker run --rm \
  -v "$(pwd)/datasets/WF/test_set:/input" \
  -v "$(pwd)/output:/output" \
  image_name \       #utilizzare il nome dato all'immagine con docker build
  /input /output
```
