# Node.js on Docker

[![MIT License](https://img.shields.io/github/license/lentiancn/docker-gentkit-node.svg?style=flat-square&label=license)](LICENSE)
[![GitHub Release](https://img.shields.io/github/tag/lentiancn/docker-gentkit-node.svg?style=flat-square&label=release)](https://github.com/lentiancn/docker-gentkit-node/releases)

A project for building Docker image for the Node.js environment .

## Tag naming convention

### LTS version

| Image        | Tag                   | Description                                                                         |
|--------------|-----------------------|-------------------------------------------------------------------------------------|
| gentkit/node | ltsX.Y.Z-alpine       | Official Node.js vX.Y.Z(LTS) based on Alpine Linux (gentkit/alpine:latest)          |
| gentkit/node | lts-alpine            | Official Node.js latest LTS version based on Alpine Linux (gentkit/alpine:latest)   |
| gentkit/node | unoff-ltsX.Y.Z-alpine | Unofficial Node.js vX.Y.Z(LTS) based on Alpine Linux (gentkit/alpine:latest)        |
| gentkit/node | unoff-lts-alpine      | Unofficial Node.js latest LTS version based on Alpine Linux (gentkit/alpine:latest) |

### non-LTS version

| Image        | Tag                  | Description                                                                     |
|--------------|----------------------|---------------------------------------------------------------------------------|
| gentkit/node | X.Y.Z-alpine         | Official Node.js vX.Y.Z based on Alpine Linux (gentkit/alpine:latest)           |
| gentkit/node | current-alpine       | Official Node.js latest version based on Alpine Linux (gentkit/alpine:latest)   |
| gentkit/node | unoff-X.Y.Z-alpine   | Unofficial Node.js vX.Y.Z based on Alpine Linux (gentkit/alpine:latest)         |
| gentkit/node | unoff-current-alpine | Unofficial Node.js latest version based on Alpine Linux (gentkit/alpine:latest) |

## Pull and run into a new container

```shell
docker run -it \
--name <your_container_name> \
gentkit/node:latest
```

## Exec into your running container

```shell
docker exec -it \
<your_container_name_or_id> \
/bin/sh
```

**NOTE** : Check status and start it using :
**docker ps -a --filter "name=<your_container_name>"** and
**docker start <your_container_name_or_id>**

## License

**gentkit/node** is licensed under
the [MIT License](LICENSE) .
