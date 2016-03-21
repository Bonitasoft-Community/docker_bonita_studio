# Test container to launch Bonita BPM Studio GUI

## Build :

```console
$ docker build -t bonita-studio .
```

## Download the Bundle :
```console
mkdir -p ~/Documents/Docker/Volumes/bonita-studio-7.2/
cd ~/Documents/Docker/Volumes/bonita-studio-7.2/
wget http://download.forge.ow2.org/bonita/BonitaBPMCommunity-7.2.1.zip
unzip BonitaBPMCommunity-7.2.1.zip
```

## Launch :

```console
docker run -ti --name test-studio -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v ~/Documents/Docker/Volumes/bonita-studio-7.2/BonitaBPMCommunity-7.2.1:/home/bonita/BonitaBPMCommunity-7.2.1 bonita-studio /home/bonita/BonitaBPMCommunity-7.2.1/BonitaBPMCommunity64-linux
```
