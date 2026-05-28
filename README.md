# Immagine DOCKER per SR Microscopy

Per eseguire l'inferenza tramite immagine Docker dopo aver fatto ```docker build```:

```bash
docker run --rm \
  -v "$(pwd)/datasets/WF/test_set:/input" \
  -v "$(pwd)/output:/output" \
  image_name \       #utilizzare il nome dato all'immagine con docker build
  /input /output
```

### Original codes at: https://github.com/camillascapicchio/SR_Microscopy 
### Other info at: https://github.com/SimLoss/-Single-image-super-resolution-microscopy-
### DockerHub repository: camillascapicchio/srgan:1

## Citation

If you find this code or the trained models useful for your research, please cite our paper:

```
@article{Lossano2025,
   author = {Lossano, Simone and Capaccioli, Simone and Cella Zanacchi, Francesca and Da Pozzo, Eleonora and Del Debbio, Francesca and Fantacci, Maria Evelina and Lizzi, Francesca and Magrassi, Raffaella and Noferi, Benedetta and Pisignano, Dario and Scapicchio, Camilla and Retico, Alessandra},
   title = {Generative super-resolution AI accelerates nanoscale analysis of cells},
   journal = {Machine Learning: Science and Technology},
   year = {2025},
   volume = {6},
   number = {2},
   doi = {10.1088/2632-2153/adc3e9},
   url = {[https://doi.org/10.1088/2632-2153/adc3e9](https://doi.org/10.1088/2632-2153/adc3e9)},
   publisher = {IOP Publishing}
}
```
