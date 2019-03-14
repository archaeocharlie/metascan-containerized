# docker build --rm --tag photoscan13 .

##
## Dockerfile for photoscan13
##

## Built using Ubuntu 16.04 LTS (xenial) since that is one of the
## targets available in PPA and is a Long Term Support (LTS)
## https://wiki.ubuntu.com/Releases  ubuntu:latest . FROM ubuntu:xenial

FROM ubuntu:latest

RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get install -y --fix-missing software-properties-common libglib2.0 libqt5gui5 libgtk2.0-0 libglu1-mesa libgomp1 zlib1g && \
    apt-get install -y  --fix-missing libxcb-image0 libqt5x11extras5 libqt5gui5 && \
    apt-get install -y --fix-missing language-pack-en language-pack-en-base wget vim     
    
## install Agisoft Metashape 1.5.1
RUN wget --directory-prefix=/usr/local http://download.agisoft.com/metashape-pro_1_5_1_amd64.tar.gz ;\
(cd /usr/local && tar zxvf metashape-pro_1_5_1_amd64.tar.gz) ;\
(cd /usr/local/bin && ln -s ../metashape-pro/photoscan-pro.sh) ;\
rm -f /usr/local/metashape-pro_1_5_1_amd64.tar.gz ;\
dpkg-reconfigure locales ;\
chmod 755 /usr/local//metashape-pro/ ;\
chmod 755 /usr/local//metashape-pro/*
#chmod 755 /usr/local/bin/photoscan-pro.sh

#ENTRYPOINT ["/usr/local/photoscan-pro/photoscan.sh"]
#CMD ["-h"]
CMD ["bash"]
