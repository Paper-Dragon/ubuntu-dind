# ubuntu-dind
Docker-inDocker, always up-to-date image that uses the most stable and latest Ubuntu image.

This docker is based on jpetazzo's dind. Credits to them.

## Usage

```bash
docker run --privileged -it -v jockerdragon-ubuntu-dind:/var/lib/docker jockerdragon/ubuntu-dind:latest
```

## ubuntu version

default: 22.04

## customer version
use manual github action build any ubuntu version with dind.