# photoscan-containerized
Photoscan in Singularity
currently running Agisoft Photoscan 1.4.1


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
