# photoscan-containerized
Photoscan in Singularity
currently running Agisoft Metscane 1.5.1

Run the Following Script to build your Singularity container.

```bash
git clone https://github.com/archaeocharlie/metashape-containerized
cd metashape-containerized
docker build --rm --tag metashape .
docker tag metashape:latest localhost:5000/metashape:latest
docker localhost:5000/metashape:latest
docker images
singularity pull docker://archaeocharlie/metashape:latest
singularity exec metashape.img /usr/local/metashape-pro/metashape.sh --help -i
```
