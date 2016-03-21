FROM ubuntu:14.04

MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>

RUN apt-get update && apt-get install -y \
    libcanberra-gtk-module \
    libswt-gtk-3-jni \
    libwebkitgtk-1.0-0 \
    openjdk-7-jre-headless

RUN groupadd -r bonita -g 1000 \
  && useradd -u 1000 -r -g bonita -d /home/bonita/ -s /bin/bash -c "Bonita User" bonita

USER bonita
CMD /bin/bash
