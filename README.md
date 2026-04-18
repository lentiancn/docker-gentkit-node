# Node.js on Docker

[![MIT License](https://img.shields.io/github/license/lentiancn/docker-gentkit-node.svg?style=flat-square&label=license)](LICENSE)
[![GitHub Release](https://img.shields.io/github/tag/lentiancn/docker-gentkit-node.svg?style=flat-square&sort=date&label=release)](https://github.com/lentiancn/docker-gentkit-node/releases)

A project for building Docker image for the Node.js environment.

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
