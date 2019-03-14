# photoscan-containerized
Photoscan in Singularity
currently running Agisoft Metscane 1.5.1

Run the Following Script to build your Singularity container.

```bash
git clone https://github.com/archaeocharlie/photoscan-containerized
cd photoscan-containerized
docker build --rm --tag photoscan .
docker tag photoscan:latest archaeocharlie/metascan:latest
docker push archaeocharlie/metascan:latest
docker images
singularity pull docker://archaeocharlie/metascan:latest
singularity exec photoscan.img /usr/local/metascan-pro/metascan.sh --help -i
```
